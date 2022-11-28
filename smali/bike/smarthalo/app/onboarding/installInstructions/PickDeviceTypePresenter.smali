.class public final Lbike/smarthalo/app/onboarding/installInstructions/PickDeviceTypePresenter;
.super Ljava/lang/Object;
.source "PickDeviceTypePresenter.kt"

# interfaces
.implements Lbike/smarthalo/app/onboarding/installInstructions/PickDeviceTypePresenterContract;
.implements Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\tH\u0016R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lbike/smarthalo/app/onboarding/installInstructions/PickDeviceTypePresenter;",
        "Lbike/smarthalo/app/onboarding/installInstructions/PickDeviceTypePresenterContract;",
        "Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;",
        "coordinator",
        "Lbike/smarthalo/app/onboarding/installInstructions/InstallInstructionCoordinatorContract;",
        "(Lbike/smarthalo/app/onboarding/installInstructions/InstallInstructionCoordinatorContract;)V",
        "getCoordinator",
        "()Lbike/smarthalo/app/onboarding/installInstructions/InstallInstructionCoordinatorContract;",
        "onSH1Selected",
        "",
        "onSH2Selected",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final coordinator:Lbike/smarthalo/app/onboarding/installInstructions/InstallInstructionCoordinatorContract;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbike/smarthalo/app/onboarding/installInstructions/InstallInstructionCoordinatorContract;)V
    .locals 1
    .param p1    # Lbike/smarthalo/app/onboarding/installInstructions/InstallInstructionCoordinatorContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "coordinator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/onboarding/installInstructions/PickDeviceTypePresenter;->coordinator:Lbike/smarthalo/app/onboarding/installInstructions/InstallInstructionCoordinatorContract;

    return-void
.end method


# virtual methods
.method public final getCoordinator()Lbike/smarthalo/app/onboarding/installInstructions/InstallInstructionCoordinatorContract;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 9
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/installInstructions/PickDeviceTypePresenter;->coordinator:Lbike/smarthalo/app/onboarding/installInstructions/InstallInstructionCoordinatorContract;

    return-object v0
.end method

.method public onSH1Selected()V
    .locals 1

    .line 12
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/installInstructions/PickDeviceTypePresenter;->coordinator:Lbike/smarthalo/app/onboarding/installInstructions/InstallInstructionCoordinatorContract;

    invoke-interface {v0}, Lbike/smarthalo/app/onboarding/installInstructions/InstallInstructionCoordinatorContract;->onSH1Selected()V

    return-void
.end method

.method public onSH2Selected()V
    .locals 1

    .line 16
    iget-object v0, p0, Lbike/smarthalo/app/onboarding/installInstructions/PickDeviceTypePresenter;->coordinator:Lbike/smarthalo/app/onboarding/installInstructions/InstallInstructionCoordinatorContract;

    invoke-interface {v0}, Lbike/smarthalo/app/onboarding/installInstructions/InstallInstructionCoordinatorContract;->onSH2Selected()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 9
    invoke-static {p0}, Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter$DefaultImpls;->onStart(Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 9
    invoke-static {p0}, Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter$DefaultImpls;->onStop(Lbike/smarthalo/app/navigationFlow/NavigationFlowPresenter;)V

    return-void
.end method
