void Hook_UpdateEvent(CB::Event@ e) {
    // Your code here.
}

void Hook_FillRoom(CB::Room@ r) {
    CB::NPC(NPC::Type::Guard, r.X, r.Y + 1, r.Z);
}

using namespace CB;
using namespace B3D;

float configuredFOV = -1.f;

void Hook_Update() {
    if (configuredFOV == -1.f) {
        configuredFOV = Options::FOV;
    }
    Options::FOV = configuredFOV * (1.f + Player::CurrentSpeed * 5);
}
