.class public final synthetic Lbike/smarthalo/app/presenters/-$$Lambda$ForgetDevicePresenter$wUI-rDVHCSk_gARyS58SfSez6II;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/presenters/ForgetDevicePresenter;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/presenters/ForgetDevicePresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$ForgetDevicePresenter$wUI-rDVHCSk_gARyS58SfSez6II;->f$0:Lbike/smarthalo/app/presenters/ForgetDevicePresenter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/presenters/-$$Lambda$ForgetDevicePresenter$wUI-rDVHCSk_gARyS58SfSez6II;->f$0:Lbike/smarthalo/app/presenters/ForgetDevicePresenter;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lbike/smarthalo/app/presenters/ForgetDevicePresenter;->lambda$subscribeToConnectionUpdates$0(Lbike/smarthalo/app/presenters/ForgetDevicePresenter;Ljava/lang/Boolean;)V

    return-void
.end method
