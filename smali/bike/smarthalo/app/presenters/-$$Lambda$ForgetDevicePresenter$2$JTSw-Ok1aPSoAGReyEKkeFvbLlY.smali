.class public final synthetic Lbike/smarthalo/app/presenters/-$$Lambda$ForgetDevicePresenter$2$JTSw-Ok1aPSoAGReyEKkeFvbLlY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/presenters/ForgetDevicePresenter$2;

.field private final synthetic f$1:Lbike/smarthalo/app/presenters/BasePresenter$BasePresenterCallback;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/presenters/ForgetDevicePresenter$2;Lbike/smarthalo/app/presenters/BasePresenter$BasePresenterCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$ForgetDevicePresenter$2$JTSw-Ok1aPSoAGReyEKkeFvbLlY;->f$0:Lbike/smarthalo/app/presenters/ForgetDevicePresenter$2;

    iput-object p2, p0, Lbike/smarthalo/app/presenters/-$$Lambda$ForgetDevicePresenter$2$JTSw-Ok1aPSoAGReyEKkeFvbLlY;->f$1:Lbike/smarthalo/app/presenters/BasePresenter$BasePresenterCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/presenters/-$$Lambda$ForgetDevicePresenter$2$JTSw-Ok1aPSoAGReyEKkeFvbLlY;->f$0:Lbike/smarthalo/app/presenters/ForgetDevicePresenter$2;

    iget-object v1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$ForgetDevicePresenter$2$JTSw-Ok1aPSoAGReyEKkeFvbLlY;->f$1:Lbike/smarthalo/app/presenters/BasePresenter$BasePresenterCallback;

    invoke-static {v0, v1}, Lbike/smarthalo/app/presenters/ForgetDevicePresenter$2;->lambda$onFail$1(Lbike/smarthalo/app/presenters/ForgetDevicePresenter$2;Lbike/smarthalo/app/presenters/BasePresenter$BasePresenterCallback;)V

    return-void
.end method
