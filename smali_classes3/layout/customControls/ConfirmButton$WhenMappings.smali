.class public final synthetic Llayout/customControls/ConfirmButton$WhenMappings;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;->values()[Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Llayout/customControls/ConfirmButton$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v0, Llayout/customControls/ConfirmButton$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;->Enabled:Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Llayout/customControls/ConfirmButton$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;->Disabled:Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Llayout/customControls/ConfirmButton$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;->Ongoing:Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v0, Llayout/customControls/ConfirmButton$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;->Success:Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    return-void
.end method
