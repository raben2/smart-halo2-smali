.class public final enum Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;
.super Ljava/lang/Enum;
.source "UserCloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CloudResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;

.field public static final enum Failure:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;

.field public static final enum NoNetwork:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;

.field public static final enum Success:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 417
    new-instance v0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;

    const-string v1, "Success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;->Success:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;

    .line 418
    new-instance v0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;

    const-string v1, "Failure"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;->Failure:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;

    .line 419
    new-instance v0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;

    const-string v1, "NoNetwork"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;->NoNetwork:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;

    const/4 v0, 0x3

    .line 416
    new-array v0, v0, [Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;

    sget-object v1, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;->Success:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;->Failure:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;

    aput-object v1, v0, v3

    sget-object v1, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;->NoNetwork:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;

    aput-object v1, v0, v4

    sput-object v0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;->$VALUES:[Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 416
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;
    .locals 1

    .line 416
    const-class v0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;
    .locals 1

    .line 416
    sget-object v0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;->$VALUES:[Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;

    invoke-virtual {v0}, [Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;

    return-object v0
.end method
