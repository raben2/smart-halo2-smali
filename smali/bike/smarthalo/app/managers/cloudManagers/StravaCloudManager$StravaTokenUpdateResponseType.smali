.class public final enum Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;
.super Ljava/lang/Enum;
.source "StravaCloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StravaTokenUpdateResponseType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;

.field public static final enum DeactivatedAccount:Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;

.field public static final enum NoAccount:Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;

.field public static final enum Success:Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;

.field public static final enum UnknownError:Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 387
    new-instance v0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;

    const-string v1, "Success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;->Success:Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;

    .line 388
    new-instance v0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;

    const-string v1, "NoAccount"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;->NoAccount:Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;

    .line 389
    new-instance v0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;

    const-string v1, "DeactivatedAccount"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;->DeactivatedAccount:Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;

    .line 390
    new-instance v0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;

    const-string v1, "UnknownError"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;->UnknownError:Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;

    const/4 v0, 0x4

    .line 386
    new-array v0, v0, [Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;

    sget-object v1, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;->Success:Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;->NoAccount:Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;

    aput-object v1, v0, v3

    sget-object v1, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;->DeactivatedAccount:Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;

    aput-object v1, v0, v4

    sget-object v1, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;->UnknownError:Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;

    aput-object v1, v0, v5

    sput-object v0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;->$VALUES:[Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 386
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;
    .locals 1

    .line 386
    const-class v0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;
    .locals 1

    .line 386
    sget-object v0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;->$VALUES:[Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;

    invoke-virtual {v0}, [Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;

    return-object v0
.end method
