.class public Lcom/instabug/bug/model/a$b;
.super Ljava/lang/Object;
.source "Bug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/bug/model/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/instabug/bug/model/a;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "RV_RETURN_VALUE_IGNORED"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/instabug/bug/model/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/instabug/bug/model/a$a;->IN_PROGRESS:Lcom/instabug/bug/model/a$a;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2, v1}, Lcom/instabug/bug/model/a;-><init>(Ljava/lang/String;Lcom/instabug/library/model/State;Lcom/instabug/bug/model/a$a;)V

    .line 4
    invoke-static {}, Lcom/instabug/bug/j/a;->a()Lcom/instabug/bug/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/j/a;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/instabug/bug/j/a;->a()Lcom/instabug/bug/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/j/a;->getAutoScreenRecordingFileUri()Landroid/net/Uri;

    move-result-object v0

    .line 6
    invoke-static {}, Lcom/instabug/bug/j/a;->a()Lcom/instabug/bug/j/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/j/a;->clear()V

    if-eqz v0, :cond_0

    .line 8
    new-instance v1, Lcom/instabug/library/model/Attachment;

    invoke-direct {v1}, Lcom/instabug/library/model/Attachment;-><init>()V

    .line 9
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/model/Attachment;->setName(Ljava/lang/String;)Lcom/instabug/library/model/Attachment;

    .line 10
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instabug/library/model/Attachment;->setLocalPath(Ljava/lang/String;)Lcom/instabug/library/model/Attachment;

    .line 11
    sget-object v0, Lcom/instabug/library/model/Attachment$Type;->AUTO_SCREEN_RECORDING_VIDEO:Lcom/instabug/library/model/Attachment$Type;

    invoke-virtual {v1, v0}, Lcom/instabug/library/model/Attachment;->setType(Lcom/instabug/library/model/Attachment$Type;)Lcom/instabug/library/model/Attachment;

    .line 13
    invoke-virtual {p1}, Lcom/instabug/bug/model/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_0
    sget-object v0, Lcom/instabug/library/Feature;->VIEW_HIERARCHY_V2:Lcom/instabug/library/Feature;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->getFeatureState(Lcom/instabug/library/Feature;)Lcom/instabug/library/Feature$State;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 18
    :goto_0
    invoke-virtual {p1, v0}, Lcom/instabug/bug/model/a;->a(Z)Lcom/instabug/bug/model/a;

    return-object p1
.end method
