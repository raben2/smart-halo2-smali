.class public final synthetic Lbike/smarthalo/app/presenters/-$$Lambda$NavigationPresenter$VDbpodSHmHnaKFH8n_YztupK8Eg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/presenters/NavigationPresenter;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/presenters/NavigationPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$NavigationPresenter$VDbpodSHmHnaKFH8n_YztupK8Eg;->f$0:Lbike/smarthalo/app/presenters/NavigationPresenter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/presenters/-$$Lambda$NavigationPresenter$VDbpodSHmHnaKFH8n_YztupK8Eg;->f$0:Lbike/smarthalo/app/presenters/NavigationPresenter;

    check-cast p1, Landroid/location/Location;

    invoke-static {v0, p1}, Lbike/smarthalo/app/presenters/NavigationPresenter;->lambda$observeCurrentLocation$4(Lbike/smarthalo/app/presenters/NavigationPresenter;Landroid/location/Location;)V

    return-void
.end method
