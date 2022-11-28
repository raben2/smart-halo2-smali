.class public final synthetic Lbike/smarthalo/app/presenters/-$$Lambda$SearchPresenter$vsh2GPJnsWUt6wurWWq3qHExprA;
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

    iput-object p1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$SearchPresenter$vsh2GPJnsWUt6wurWWq3qHExprA;->f$0:Lbike/smarthalo/app/presenters/SearchPresenter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/presenters/-$$Lambda$SearchPresenter$vsh2GPJnsWUt6wurWWq3qHExprA;->f$0:Lbike/smarthalo/app/presenters/SearchPresenter;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lbike/smarthalo/app/presenters/SearchPresenter;->lambda$subscribeToQueryUpdates$1(Lbike/smarthalo/app/presenters/SearchPresenter;Ljava/lang/String;)V

    return-void
.end method
