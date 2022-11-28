.class public final enum Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;
.super Ljava/lang/Enum;
.source "ConfirmButtonState.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;",
        "",
        "(Ljava/lang/String;I)V",
        "Enabled",
        "Disabled",
        "Ongoing",
        "Success",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

.field public static final enum Disabled:Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

.field public static final enum Enabled:Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

.field public static final enum Ongoing:Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

.field public static final enum Success:Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    new-instance v1, Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    const-string v2, "Enabled"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;->Enabled:Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    aput-object v1, v0, v3

    new-instance v1, Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    const-string v2, "Disabled"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;->Disabled:Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    aput-object v1, v0, v3

    new-instance v1, Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    const-string v2, "Ongoing"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;->Ongoing:Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    aput-object v1, v0, v3

    new-instance v1, Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    const-string v2, "Success"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;->Success:Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    aput-object v1, v0, v3

    sput-object v0, Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;->$VALUES:[Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;
    .locals 1

    const-class v0, Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;
    .locals 1

    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;->$VALUES:[Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    invoke-virtual {v0}, [Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/app/models/PresentationModels/FormStates/ConfirmButtonState;

    return-object v0
.end method
