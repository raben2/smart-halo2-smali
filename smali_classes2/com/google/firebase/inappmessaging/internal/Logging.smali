.class public Lcom/google/firebase/inappmessaging/internal/Logging;
.super Ljava/lang/Object;
.source "Logging.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FIAM.Headless"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logd(Ljava/lang/String;)V
    .locals 2

    const-string v0, "FIAM.Headless"

    const/4 v1, 0x3

    .line 33
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FIAM.Headless"

    .line 34
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static loge(Ljava/lang/String;)V
    .locals 1

    const-string v0, "FIAM.Headless"

    .line 47
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logi(Ljava/lang/String;)V
    .locals 2

    const-string v0, "FIAM.Headless"

    const/4 v1, 0x4

    .line 40
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FIAM.Headless"

    .line 41
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static logw(Ljava/lang/String;)V
    .locals 1

    const-string v0, "FIAM.Headless"

    .line 52
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
