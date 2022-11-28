.class public final synthetic Lbike/smarthalo/app/presenters/-$$Lambda$MainPresenter$zdTaM-V4wFufJrVLBnyJK1V-9dQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/presenters/MainPresenter;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/presenters/MainPresenter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$MainPresenter$zdTaM-V4wFufJrVLBnyJK1V-9dQ;->f$0:Lbike/smarthalo/app/presenters/MainPresenter;

    iput-object p2, p0, Lbike/smarthalo/app/presenters/-$$Lambda$MainPresenter$zdTaM-V4wFufJrVLBnyJK1V-9dQ;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/presenters/-$$Lambda$MainPresenter$zdTaM-V4wFufJrVLBnyJK1V-9dQ;->f$0:Lbike/smarthalo/app/presenters/MainPresenter;

    iget-object v1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$MainPresenter$zdTaM-V4wFufJrVLBnyJK1V-9dQ;->f$1:Ljava/lang/String;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p1}, Lbike/smarthalo/app/presenters/MainPresenter;->lambda$checkForNewFeatureDemo$2(Lbike/smarthalo/app/presenters/MainPresenter;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method
