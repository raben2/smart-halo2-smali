.class public final synthetic Lbike/smarthalo/app/presenters/-$$Lambda$NavigationPresenter$unrtWyRA6R7M1rSs1PC_I4T_ni8;
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

    iput-object p1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$NavigationPresenter$unrtWyRA6R7M1rSs1PC_I4T_ni8;->f$0:Lbike/smarthalo/app/presenters/NavigationPresenter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/presenters/-$$Lambda$NavigationPresenter$unrtWyRA6R7M1rSs1PC_I4T_ni8;->f$0:Lbike/smarthalo/app/presenters/NavigationPresenter;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lbike/smarthalo/app/presenters/NavigationPresenter;->lambda$observeFavouritesUpdates$5(Lbike/smarthalo/app/presenters/NavigationPresenter;Ljava/util/List;)V

    return-void
.end method
