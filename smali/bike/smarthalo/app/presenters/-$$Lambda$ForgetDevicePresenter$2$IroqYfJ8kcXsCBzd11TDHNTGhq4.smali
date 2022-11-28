.class public final synthetic Lbike/smarthalo/app/presenters/-$$Lambda$ForgetDevicePresenter$2$IroqYfJ8kcXsCBzd11TDHNTGhq4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/presenters/BasePresenter$BasePresenterCallback;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/presenters/BasePresenter$BasePresenterCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$ForgetDevicePresenter$2$IroqYfJ8kcXsCBzd11TDHNTGhq4;->f$0:Lbike/smarthalo/app/presenters/BasePresenter$BasePresenterCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/presenters/-$$Lambda$ForgetDevicePresenter$2$IroqYfJ8kcXsCBzd11TDHNTGhq4;->f$0:Lbike/smarthalo/app/presenters/BasePresenter$BasePresenterCallback;

    invoke-static {v0}, Lbike/smarthalo/app/presenters/ForgetDevicePresenter$2;->lambda$onSuccess$0(Lbike/smarthalo/app/presenters/BasePresenter$BasePresenterCallback;)V

    return-void
.end method
