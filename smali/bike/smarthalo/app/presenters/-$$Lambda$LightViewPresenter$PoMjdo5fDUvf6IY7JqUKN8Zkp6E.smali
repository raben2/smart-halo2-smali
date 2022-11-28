.class public final synthetic Lbike/smarthalo/app/presenters/-$$Lambda$LightViewPresenter$PoMjdo5fDUvf6IY7JqUKN8Zkp6E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lbike/smarthalo/app/presenters/-$$Lambda$LightViewPresenter$PoMjdo5fDUvf6IY7JqUKN8Zkp6E;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$LightViewPresenter$PoMjdo5fDUvf6IY7JqUKN8Zkp6E;

    invoke-direct {v0}, Lbike/smarthalo/app/presenters/-$$Lambda$LightViewPresenter$PoMjdo5fDUvf6IY7JqUKN8Zkp6E;-><init>()V

    sput-object v0, Lbike/smarthalo/app/presenters/-$$Lambda$LightViewPresenter$PoMjdo5fDUvf6IY7JqUKN8Zkp6E;->INSTANCE:Lbike/smarthalo/app/presenters/-$$Lambda$LightViewPresenter$PoMjdo5fDUvf6IY7JqUKN8Zkp6E;

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

    check-cast p1, Lbike/smarthalo/app/models/SHSettings;

    invoke-static {p1}, Lbike/smarthalo/app/presenters/LightViewPresenter;->lambda$setUpSettingsSubscription$0(Lbike/smarthalo/app/models/SHSettings;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
