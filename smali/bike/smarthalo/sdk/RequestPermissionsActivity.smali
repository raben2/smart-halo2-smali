.class public Lbike/smarthalo/sdk/RequestPermissionsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "RequestPermissionsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 10
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    sget p1, Lbike/smarthalo/sdk/R$layout;->activity_dialog:I

    invoke-virtual {p0, p1}, Lbike/smarthalo/sdk/RequestPermissionsActivity;->setContentView(I)V

    .line 13
    invoke-static {}, Lbike/smarthalo/sdk/SHSdkHelpers;->getBlePermissions()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lbike/smarthalo/sdk/SHSdkHelpers;->checkPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 14
    invoke-static {}, Lbike/smarthalo/sdk/SHSdkHelpers;->getBlePermissions()[Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x64

    sget v1, Lbike/smarthalo/sdk/R$string;->app_name:I

    invoke-static {p0, p1, v0, v1}, Lbike/smarthalo/sdk/SHSdkHelpers;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;II)V

    goto :goto_0

    .line 16
    :cond_0
    invoke-static {p0}, Lbike/smarthalo/sdk/SHSdkHelpers;->startScanningAndFinishActivity(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 22
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x64

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    array-length p1, p3

    if-lez p1, :cond_1

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 26
    invoke-static {p0}, Lbike/smarthalo/sdk/SHSdkHelpers;->startScanningAndFinishActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 28
    :cond_1
    invoke-static {p0}, Lbike/smarthalo/sdk/SHSdkHelpers;->startScanningAndFinishActivity(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method
