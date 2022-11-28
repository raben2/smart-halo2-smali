.class public final synthetic Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$ozNnwyaNJoBcK0p7_YsbqYqcYpQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$ozNnwyaNJoBcK0p7_YsbqYqcYpQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$ozNnwyaNJoBcK0p7_YsbqYqcYpQ;

    invoke-direct {v0}, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$ozNnwyaNJoBcK0p7_YsbqYqcYpQ;-><init>()V

    sput-object v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$ozNnwyaNJoBcK0p7_YsbqYqcYpQ;->INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$ozNnwyaNJoBcK0p7_YsbqYqcYpQ;

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

    check-cast p1, Lretrofit2/Response;

    invoke-static {p1}, Lbike/smarthalo/app/managers/cloudManagers/ApiObservableHelper;->formatGenericResponse(Lretrofit2/Response;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/models/CloudRide;

    return-object p1
.end method
