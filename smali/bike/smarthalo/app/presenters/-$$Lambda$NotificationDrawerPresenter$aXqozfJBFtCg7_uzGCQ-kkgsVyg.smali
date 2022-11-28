.class public final synthetic Lbike/smarthalo/app/presenters/-$$Lambda$NotificationDrawerPresenter$aXqozfJBFtCg7_uzGCQ-kkgsVyg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$NotificationDrawerPresenter$aXqozfJBFtCg7_uzGCQ-kkgsVyg;->f$0:Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/presenters/-$$Lambda$NotificationDrawerPresenter$aXqozfJBFtCg7_uzGCQ-kkgsVyg;->f$0:Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;

    check-cast p1, Lbike/smarthalo/app/models/DeviceOwnershipState;

    invoke-static {v0, p1}, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->lambda$subscribeToConnectionState$1(Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;Lbike/smarthalo/app/models/DeviceOwnershipState;)V

    return-void
.end method
