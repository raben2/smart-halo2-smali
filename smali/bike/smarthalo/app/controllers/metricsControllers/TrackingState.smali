.class public final enum Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;
.super Ljava/lang/Enum;
.source "TrackingState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;

.field public static final enum Inactive:Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;

.field public static final enum PreTracking:Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;

.field public static final enum Tracking:Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 8
    new-instance v0, Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;

    const-string v1, "Tracking"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;->Tracking:Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;

    .line 9
    new-instance v0, Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;

    const-string v1, "PreTracking"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;->PreTracking:Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;

    .line 10
    new-instance v0, Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;

    const-string v1, "Inactive"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;->Inactive:Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;

    const/4 v0, 0x3

    .line 7
    new-array v0, v0, [Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;

    sget-object v1, Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;->Tracking:Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;->PreTracking:Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;

    aput-object v1, v0, v3

    sget-object v1, Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;->Inactive:Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;

    aput-object v1, v0, v4

    sput-object v0, Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;->$VALUES:[Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;

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

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;
    .locals 1

    .line 7
    const-class v0, Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;
    .locals 1

    .line 7
    sget-object v0, Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;->$VALUES:[Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;

    invoke-virtual {v0}, [Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;

    return-object v0
.end method
