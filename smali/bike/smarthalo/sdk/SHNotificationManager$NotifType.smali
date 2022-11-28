.class public final enum Lbike/smarthalo/sdk/SHNotificationManager$NotifType;
.super Ljava/lang/Enum;
.source "SHNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/sdk/SHNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotifType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/sdk/SHNotificationManager$NotifType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/sdk/SHNotificationManager$NotifType;

.field public static final enum NO_FEATURE:Lbike/smarthalo/sdk/SHNotificationManager$NotifType;

.field public static final enum NO_PERMISSION:Lbike/smarthalo/sdk/SHNotificationManager$NotifType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 19
    new-instance v0, Lbike/smarthalo/sdk/SHNotificationManager$NotifType;

    const-string v1, "NO_FEATURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbike/smarthalo/sdk/SHNotificationManager$NotifType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/sdk/SHNotificationManager$NotifType;->NO_FEATURE:Lbike/smarthalo/sdk/SHNotificationManager$NotifType;

    .line 20
    new-instance v0, Lbike/smarthalo/sdk/SHNotificationManager$NotifType;

    const-string v1, "NO_PERMISSION"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lbike/smarthalo/sdk/SHNotificationManager$NotifType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/sdk/SHNotificationManager$NotifType;->NO_PERMISSION:Lbike/smarthalo/sdk/SHNotificationManager$NotifType;

    const/4 v0, 0x2

    .line 18
    new-array v0, v0, [Lbike/smarthalo/sdk/SHNotificationManager$NotifType;

    sget-object v1, Lbike/smarthalo/sdk/SHNotificationManager$NotifType;->NO_FEATURE:Lbike/smarthalo/sdk/SHNotificationManager$NotifType;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/sdk/SHNotificationManager$NotifType;->NO_PERMISSION:Lbike/smarthalo/sdk/SHNotificationManager$NotifType;

    aput-object v1, v0, v3

    sput-object v0, Lbike/smarthalo/sdk/SHNotificationManager$NotifType;->$VALUES:[Lbike/smarthalo/sdk/SHNotificationManager$NotifType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/sdk/SHNotificationManager$NotifType;
    .locals 1

    .line 18
    const-class v0, Lbike/smarthalo/sdk/SHNotificationManager$NotifType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/sdk/SHNotificationManager$NotifType;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/sdk/SHNotificationManager$NotifType;
    .locals 1

    .line 18
    sget-object v0, Lbike/smarthalo/sdk/SHNotificationManager$NotifType;->$VALUES:[Lbike/smarthalo/sdk/SHNotificationManager$NotifType;

    invoke-virtual {v0}, [Lbike/smarthalo/sdk/SHNotificationManager$NotifType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/sdk/SHNotificationManager$NotifType;

    return-object v0
.end method
