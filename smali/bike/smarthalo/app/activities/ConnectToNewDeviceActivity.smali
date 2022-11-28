.class public Lbike/smarthalo/app/activities/ConnectToNewDeviceActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ConnectToNewDeviceActivity.java"


# instance fields
.field analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 28
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001d

    .line 29
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/activities/ConnectToNewDeviceActivity;->setContentView(I)V

    .line 30
    invoke-static {p0}, Lbike/smarthalo/app/dependencyManagement/InjectionHelper;->getCoreComponent(Landroid/content/Context;)Lbike/smarthalo/app/dependencyManagement/components/CoreComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lbike/smarthalo/app/dependencyManagement/components/CoreComponent;->inject(Lbike/smarthalo/app/activities/ConnectToNewDeviceActivity;)V

    const p1, 0x7f11030a

    .line 31
    invoke-static {p0, p1}, Lbike/smarthalo/app/helpers/SHToolbarHelper;->initToolbar(Landroidx/appcompat/app/AppCompatActivity;I)V

    .line 32
    invoke-static {p0}, Lbike/smarthalo/app/helpers/ActivityHelper;->initializeStatusBar(Landroid/app/Activity;)V

    const p1, 0x7f0a00ff

    .line 34
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/activities/ConnectToNewDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 35
    new-instance v0, Lbike/smarthalo/app/activities/ConnectToNewDeviceActivity$1;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/activities/ConnectToNewDeviceActivity$1;-><init>(Lbike/smarthalo/app/activities/ConnectToNewDeviceActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 47
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 48
    iget-object v0, p0, Lbike/smarthalo/app/activities/ConnectToNewDeviceActivity;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    const-string v1, "DeviceHelp"

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendScreenViewEvent(Ljava/lang/String;)V

    return-void
.end method
