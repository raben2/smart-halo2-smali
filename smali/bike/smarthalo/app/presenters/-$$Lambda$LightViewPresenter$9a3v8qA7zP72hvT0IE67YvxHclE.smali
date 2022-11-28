.class public final synthetic Lbike/smarthalo/app/presenters/-$$Lambda$LightViewPresenter$9a3v8qA7zP72hvT0IE67YvxHclE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/presenters/LightViewPresenter;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/presenters/LightViewPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$LightViewPresenter$9a3v8qA7zP72hvT0IE67YvxHclE;->f$0:Lbike/smarthalo/app/presenters/LightViewPresenter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/presenters/-$$Lambda$LightViewPresenter$9a3v8qA7zP72hvT0IE67YvxHclE;->f$0:Lbike/smarthalo/app/presenters/LightViewPresenter;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lbike/smarthalo/app/presenters/LightViewPresenter;->lambda$setUpSettingsSubscription$1(Lbike/smarthalo/app/presenters/LightViewPresenter;Ljava/lang/Boolean;)V

    return-void
.end method
