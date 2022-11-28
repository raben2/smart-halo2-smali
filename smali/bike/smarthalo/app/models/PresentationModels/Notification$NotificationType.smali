.class public final enum Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;
.super Ljava/lang/Enum;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/models/PresentationModels/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotificationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;

.field public static final enum ConnectToYourSmartHalo:Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;

.field public static final enum DebugMenu:Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;

.field public static final enum FirmwareTransferInProgress:Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;

.field public static final enum FirmwareUpdate:Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;

.field public static final enum LowBattery:Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 33
    new-instance v0, Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;

    const-string v1, "FirmwareUpdate"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;->FirmwareUpdate:Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;

    .line 34
    new-instance v0, Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;

    const-string v1, "FirmwareTransferInProgress"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;->FirmwareTransferInProgress:Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;

    .line 35
    new-instance v0, Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;

    const-string v1, "ConnectToYourSmartHalo"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;->ConnectToYourSmartHalo:Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;

    .line 36
    new-instance v0, Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;

    const-string v1, "LowBattery"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;->LowBattery:Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;

    .line 37
    new-instance v0, Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;

    const-string v1, "DebugMenu"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;->DebugMenu:Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;

    const/4 v0, 0x5

    .line 32
    new-array v0, v0, [Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;->FirmwareUpdate:Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;->FirmwareTransferInProgress:Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;

    aput-object v1, v0, v3

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;->ConnectToYourSmartHalo:Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;

    aput-object v1, v0, v4

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;->LowBattery:Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;

    aput-object v1, v0, v5

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;->DebugMenu:Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;

    aput-object v1, v0, v6

    sput-object v0, Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;->$VALUES:[Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;
    .locals 1

    .line 32
    const-class v0, Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;
    .locals 1

    .line 32
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;->$VALUES:[Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;

    invoke-virtual {v0}, [Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;

    return-object v0
.end method
