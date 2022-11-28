.class public final synthetic Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$wUPVG3FaZsYhqfavwmLzo3uUw0M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$wUPVG3FaZsYhqfavwmLzo3uUw0M;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$wUPVG3FaZsYhqfavwmLzo3uUw0M;

    invoke-direct {v0}, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$wUPVG3FaZsYhqfavwmLzo3uUw0M;-><init>()V

    sput-object v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$wUPVG3FaZsYhqfavwmLzo3uUw0M;->INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$wUPVG3FaZsYhqfavwmLzo3uUw0M;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;->lambda$onStravaManualUploadResponse$5(Ljava/lang/Throwable;)Lbike/smarthalo/app/models/StravaUploadResult;

    move-result-object p1

    return-object p1
.end method
