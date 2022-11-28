.class public final synthetic Lbike/smarthalo/app/presenters/-$$Lambda$MapSettingsPresenter$m4k2Rwb65_D_5sFY-ohAxXonox4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lbike/smarthalo/app/presenters/-$$Lambda$MapSettingsPresenter$m4k2Rwb65_D_5sFY-ohAxXonox4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$MapSettingsPresenter$m4k2Rwb65_D_5sFY-ohAxXonox4;

    invoke-direct {v0}, Lbike/smarthalo/app/presenters/-$$Lambda$MapSettingsPresenter$m4k2Rwb65_D_5sFY-ohAxXonox4;-><init>()V

    sput-object v0, Lbike/smarthalo/app/presenters/-$$Lambda$MapSettingsPresenter$m4k2Rwb65_D_5sFY-ohAxXonox4;->INSTANCE:Lbike/smarthalo/app/presenters/-$$Lambda$MapSettingsPresenter$m4k2Rwb65_D_5sFY-ohAxXonox4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lbike/smarthalo/app/models/PresentationNavigationState;

    invoke-static {p1}, Lbike/smarthalo/app/presenters/MapSettingsPresenter;->lambda$observeGpxNavigation$0(Lbike/smarthalo/app/models/PresentationNavigationState;)Z

    move-result p1

    return p1
.end method
