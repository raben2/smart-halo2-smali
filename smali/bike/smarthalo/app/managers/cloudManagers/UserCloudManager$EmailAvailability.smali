.class public final enum Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;
.super Ljava/lang/Enum;
.source "UserCloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EmailAvailability"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;

.field public static final enum Available:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;

.field public static final enum Error:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;

.field public static final enum NotAvailable:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 423
    new-instance v0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;

    const-string v1, "Available"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;->Available:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;

    .line 424
    new-instance v0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;

    const-string v1, "NotAvailable"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;->NotAvailable:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;

    .line 425
    new-instance v0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;

    const-string v1, "Error"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;->Error:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;

    const/4 v0, 0x3

    .line 422
    new-array v0, v0, [Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;

    sget-object v1, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;->Available:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;->NotAvailable:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;

    aput-object v1, v0, v3

    sget-object v1, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;->Error:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;

    aput-object v1, v0, v4

    sput-object v0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;->$VALUES:[Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 422
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;
    .locals 1

    .line 422
    const-class v0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;
    .locals 1

    .line 422
    sget-object v0, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;->$VALUES:[Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;

    invoke-virtual {v0}, [Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;

    return-object v0
.end method
