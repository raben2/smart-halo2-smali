.class public final synthetic Lbike/smarthalo/app/presenters/-$$Lambda$FitnessMainViewPresenter$ESZoG9jn76oqnp5ClrSv794OYCc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lbike/smarthalo/app/presenters/-$$Lambda$FitnessMainViewPresenter$ESZoG9jn76oqnp5ClrSv794OYCc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$FitnessMainViewPresenter$ESZoG9jn76oqnp5ClrSv794OYCc;

    invoke-direct {v0}, Lbike/smarthalo/app/presenters/-$$Lambda$FitnessMainViewPresenter$ESZoG9jn76oqnp5ClrSv794OYCc;-><init>()V

    sput-object v0, Lbike/smarthalo/app/presenters/-$$Lambda$FitnessMainViewPresenter$ESZoG9jn76oqnp5ClrSv794OYCc;->INSTANCE:Lbike/smarthalo/app/presenters/-$$Lambda$FitnessMainViewPresenter$ESZoG9jn76oqnp5ClrSv794OYCc;

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

    check-cast p1, Lbike/smarthalo/app/models/SHUser;

    invoke-static {p1}, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->lambda$observeUnitsChanged$4(Lbike/smarthalo/app/models/SHUser;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
