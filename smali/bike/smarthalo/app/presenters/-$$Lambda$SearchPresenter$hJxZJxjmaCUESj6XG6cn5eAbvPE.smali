.class public final synthetic Lbike/smarthalo/app/presenters/-$$Lambda$SearchPresenter$hJxZJxjmaCUESj6XG6cn5eAbvPE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/presenters/SearchPresenter;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/presenters/SearchPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$SearchPresenter$hJxZJxjmaCUESj6XG6cn5eAbvPE;->f$0:Lbike/smarthalo/app/presenters/SearchPresenter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/presenters/-$$Lambda$SearchPresenter$hJxZJxjmaCUESj6XG6cn5eAbvPE;->f$0:Lbike/smarthalo/app/presenters/SearchPresenter;

    check-cast p1, Landroid/location/Location;

    invoke-static {v0, p1}, Lbike/smarthalo/app/presenters/SearchPresenter;->lambda$observeFirstLocation$2(Lbike/smarthalo/app/presenters/SearchPresenter;Landroid/location/Location;)V

    return-void
.end method
