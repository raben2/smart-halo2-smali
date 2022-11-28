.class public final synthetic Lbike/smarthalo/app/presenters/-$$Lambda$NavigationPresenter$eTH3ptq-T1ILveeo7h5CNmOL5bE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/presenters/NavigationPresenter;

.field private final synthetic f$1:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/presenters/NavigationPresenter;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$NavigationPresenter$eTH3ptq-T1ILveeo7h5CNmOL5bE;->f$0:Lbike/smarthalo/app/presenters/NavigationPresenter;

    iput-object p2, p0, Lbike/smarthalo/app/presenters/-$$Lambda$NavigationPresenter$eTH3ptq-T1ILveeo7h5CNmOL5bE;->f$1:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/presenters/-$$Lambda$NavigationPresenter$eTH3ptq-T1ILveeo7h5CNmOL5bE;->f$0:Lbike/smarthalo/app/presenters/NavigationPresenter;

    iget-object v1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$NavigationPresenter$eTH3ptq-T1ILveeo7h5CNmOL5bE;->f$1:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    check-cast p1, Lbike/smarthalo/app/models/SHLocation;

    invoke-static {v0, v1, p1}, Lbike/smarthalo/app/presenters/NavigationPresenter;->lambda$requestItinerary$1(Lbike/smarthalo/app/presenters/NavigationPresenter;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;Lbike/smarthalo/app/models/SHLocation;)V

    return-void
.end method
