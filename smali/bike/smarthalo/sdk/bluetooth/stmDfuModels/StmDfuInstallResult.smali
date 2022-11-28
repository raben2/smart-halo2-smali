.class public final enum Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;
.super Ljava/lang/Enum;
.source "StmDfuInstallResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;

.field public static final enum InstallError:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;

.field public static final enum LowBattery:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;

.field public static final enum NotTransferred:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;

.field public static final enum Success:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 8
    new-instance v0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;

    const-string v1, "InstallError"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;->InstallError:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;

    .line 9
    new-instance v0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;

    const-string v1, "NotTransferred"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;->NotTransferred:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;

    .line 10
    new-instance v0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;

    const-string v1, "LowBattery"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;->LowBattery:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;

    .line 11
    new-instance v0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;

    const-string v1, "Success"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;->Success:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;

    const/4 v0, 0x4

    .line 7
    new-array v0, v0, [Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;

    sget-object v1, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;->InstallError:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;->NotTransferred:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;

    aput-object v1, v0, v3

    sget-object v1, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;->LowBattery:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;

    aput-object v1, v0, v4

    sget-object v1, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;->Success:Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;

    aput-object v1, v0, v5

    sput-object v0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;->$VALUES:[Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;

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

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;
    .locals 1

    .line 7
    const-class v0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;
    .locals 1

    .line 7
    sget-object v0, Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;->$VALUES:[Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;

    invoke-virtual {v0}, [Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInstallResult;

    return-object v0
.end method
