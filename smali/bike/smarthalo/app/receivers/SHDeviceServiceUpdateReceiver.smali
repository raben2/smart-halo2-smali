.class public Lbike/smarthalo/app/receivers/SHDeviceServiceUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SHDeviceServiceUpdateReceiver.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SHDeviceServiceUpdateReceiver"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "bike.smarthalo.sdk.BROADCAST_LAUNCH_APP"

    .line 69
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "bike.smarthalo.sdk.BROADCAST_CONNECTION_STATE"

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "bike.smarthalo.sdk.BROADCAST_ERROR"

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 34
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bike.smarthalo.sdk.BROADCAST_LAUNCH_APP"

    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lbike/smarthalo/app/activities/LaunchActivity;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "android.intent.category.LAUNCHER"

    .line 38
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 39
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    .line 40
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_1
    const-string v1, "bike.smarthalo.sdk.BROADCAST_CONNECTION_STATE"

    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 43
    sget-object v0, Lbike/smarthalo/sdk/models/DeviceConnectionState;->Authenticated:Lbike/smarthalo/sdk/models/DeviceConnectionState;

    invoke-static {p2, v0}, Lbike/smarthalo/sdk/SHDeviceService;->hasJustChangedToThisState(Landroid/content/Intent;Lbike/smarthalo/sdk/models/DeviceConnectionState;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    invoke-static {}, Lbike/smarthalo/app/helpers/SHBuildConfigHelper;->isDevelopmentBuildConfig()Z

    move-result p2

    if-eqz p2, :cond_7

    const p2, 0x7f11009d

    .line 45
    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 47
    :cond_2
    sget-object v0, Lbike/smarthalo/sdk/models/DeviceConnectionState;->Disconnected:Lbike/smarthalo/sdk/models/DeviceConnectionState;

    invoke-static {p2, v0}, Lbike/smarthalo/sdk/SHDeviceService;->hasJustChangedToThisState(Landroid/content/Intent;Lbike/smarthalo/sdk/models/DeviceConnectionState;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 48
    invoke-static {}, Lbike/smarthalo/app/helpers/SHBuildConfigHelper;->isDevelopmentBuildConfig()Z

    move-result p2

    if-eqz p2, :cond_7

    const p2, 0x7f1100f4

    .line 49
    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    const-string v1, "bike.smarthalo.sdk.BROADCAST_ERROR"

    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "bike.smarthalo.sdk.EXTRA_ERROR_CODE"

    .line 53
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-nez p2, :cond_4

    const p2, 0x7f110073

    .line 56
    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    if-ne p2, v2, :cond_5

    const p2, 0x7f11009c

    .line 58
    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_5
    const/4 v0, 0x3

    if-ne p2, v0, :cond_6

    const p2, 0x7f110172

    .line 60
    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_6
    const/4 v0, 0x2

    if-ne p2, v0, :cond_7

    const p2, 0x7f11034b

    .line 62
    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_7
    :goto_0
    return-void
.end method
