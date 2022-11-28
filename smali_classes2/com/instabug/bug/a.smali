.class public Lcom/instabug/bug/a;
.super Ljava/lang/Object;
.source "BugReportingWrapper.java"


# direct methods
.method public static a(I)V
    .locals 2
    .param p0    # I
        .annotation runtime Lcom/instabug/bug/BugReporting$ReportType;
        .end annotation
    .end param

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BugReportingWrapper"

    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->isForegroundBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 32
    :cond_0
    sget-object v0, Lcom/instabug/library/Feature;->BUG_REPORTING:Lcom/instabug/library/Feature;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->isFeatureEnabled(Lcom/instabug/library/Feature;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    const/4 v1, 0x2

    if-eq p0, v0, :cond_2

    if-eq p0, v1, :cond_1

    goto :goto_0

    .line 41
    :cond_1
    invoke-static {}, Lcom/instabug/library/invocation/InvocationManager;->getInstance()Lcom/instabug/library/invocation/InvocationManager;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/instabug/library/invocation/InvocationManager;->invoke(I)V

    goto :goto_0

    .line 42
    :cond_2
    invoke-static {}, Lcom/instabug/library/invocation/InvocationManager;->getInstance()Lcom/instabug/library/invocation/InvocationManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/instabug/library/invocation/InvocationManager;->invoke(I)V

    goto :goto_0

    .line 43
    :cond_3
    invoke-static {}, Lcom/instabug/library/invocation/InvocationManager;->getInstance()Lcom/instabug/library/invocation/InvocationManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/instabug/library/invocation/InvocationManager;->invoke(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static a(I[I)V
    .locals 0

    .line 44
    invoke-static {p1}, Lcom/instabug/bug/a;->a([I)V

    .line 45
    invoke-static {p0}, Lcom/instabug/bug/a;->a(I)V

    return-void
.end method

.method private static a(Lcom/instabug/library/Feature$State;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setQuestionState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BugReportingWrapper"

    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lcom/instabug/library/Feature$State;->DISABLED:Lcom/instabug/library/Feature$State;

    if-ne p0, v0, :cond_0

    .line 48
    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->setChatsState(Lcom/instabug/library/Feature$State;)V

    goto :goto_0

    .line 49
    :cond_0
    sget-object v0, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne p0, v0, :cond_1

    .line 50
    invoke-static {}, Lcom/instabug/bug/settings/a;->r()Lcom/instabug/bug/settings/a;

    move-result-object p0

    const-string v0, "ask a question"

    invoke-virtual {p0, v0}, Lcom/instabug/bug/settings/a;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 51
    sget-object p0, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    invoke-static {p0}, Lcom/instabug/library/core/InstabugCore;->setChatsState(Lcom/instabug/library/Feature$State;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Z)V
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAutoScreenRecordingEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BugReportingWrapper"

    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-static {p0}, Lcom/instabug/library/core/InstabugCore;->setAutoScreenRecordingEnabled(Z)V

    if-eqz p0, :cond_0

    .line 65
    invoke-static {}, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;->getInstance()Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;->start()V

    :cond_0
    return-void
.end method

.method public static a(ZZZZ)V
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAttachementTypes: initialScreenshot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " extraScreenshot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " imageFromGallery: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "screenRecording: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BugReportingWrapper"

    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance v0, Lcom/instabug/bug/settings/AttachmentsTypesParams;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/instabug/bug/settings/AttachmentsTypesParams;-><init>(ZZZZ)V

    .line 58
    invoke-static {}, Lcom/instabug/bug/settings/a;->r()Lcom/instabug/bug/settings/a;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/instabug/bug/settings/a;->a(Lcom/instabug/bug/settings/AttachmentsTypesParams;)V

    .line 60
    invoke-static {p1, p2, p3}, Lcom/instabug/chat/ChatsDelegate;->setAttachmentTypesEnabled(ZZZ)V

    return-void
.end method

.method public static a([I)V
    .locals 6

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    aget v3, p0, v2

    .line 2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setOptions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BugReportingWrapper"

    invoke-static {v5, v4}, Lcom/instabug/library/util/InstabugSDKLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-eq v3, v4, :cond_2

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    const/16 v4, 0x10

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 16
    :cond_0
    invoke-static {}, Lcom/instabug/bug/settings/a;->r()Lcom/instabug/bug/settings/a;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/instabug/bug/settings/a;->f(Z)V

    goto :goto_1

    .line 17
    :cond_1
    invoke-static {}, Lcom/instabug/bug/settings/a;->r()Lcom/instabug/bug/settings/a;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/instabug/bug/settings/a;->a(Z)V

    goto :goto_1

    .line 24
    :cond_2
    invoke-static {}, Lcom/instabug/bug/settings/a;->r()Lcom/instabug/bug/settings/a;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/instabug/bug/settings/a;->c(Z)V

    .line 25
    invoke-static {}, Lcom/instabug/bug/settings/a;->r()Lcom/instabug/bug/settings/a;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/instabug/bug/settings/a;->b(Z)V

    goto :goto_1

    .line 26
    :cond_3
    invoke-static {}, Lcom/instabug/bug/settings/a;->r()Lcom/instabug/bug/settings/a;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/instabug/bug/settings/a;->c(Z)V

    .line 27
    invoke-static {}, Lcom/instabug/bug/settings/a;->r()Lcom/instabug/bug/settings/a;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/instabug/bug/settings/a;->b(Z)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static b(Lcom/instabug/library/Feature$State;)V
    .locals 2

    .line 27
    invoke-static {p0}, Lcom/instabug/bug/a;->a(Lcom/instabug/library/Feature$State;)V

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BugReportingWrapper"

    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-static {p0}, Lcom/instabug/library/core/InstabugCore;->setBugReportingState(Lcom/instabug/library/Feature$State;)V

    .line 31
    invoke-static {}, Lcom/instabug/library/invocation/InvocationManager;->getInstance()Lcom/instabug/library/invocation/InvocationManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/instabug/library/invocation/InvocationManager;->notifyInvocationOptionChanged()V

    return-void
.end method

.method public static varargs b([I)V
    .locals 8
    .param p0    # [I
        .annotation runtime Lcom/instabug/bug/BugReporting$ReportType;
        .end annotation
    .end param

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget v5, p0, v1

    .line 2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setReportTypes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BugReportingWrapper"

    invoke-static {v7, v6}, Lcom/instabug/library/util/InstabugSDKLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    if-eq v5, v6, :cond_1

    const/4 v7, 0x2

    if-eq v5, v7, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 17
    :cond_3
    invoke-static {}, Lcom/instabug/bug/settings/a;->r()Lcom/instabug/bug/settings/a;

    move-result-object p0

    const-string v0, "bug"

    invoke-virtual {p0, v0, v2}, Lcom/instabug/bug/settings/a;->a(Ljava/lang/String;Z)V

    .line 18
    invoke-static {}, Lcom/instabug/bug/settings/a;->r()Lcom/instabug/bug/settings/a;

    move-result-object p0

    const-string v0, "feedback"

    invoke-virtual {p0, v0, v3}, Lcom/instabug/bug/settings/a;->a(Ljava/lang/String;Z)V

    .line 19
    invoke-static {}, Lcom/instabug/bug/settings/a;->r()Lcom/instabug/bug/settings/a;

    move-result-object p0

    const-string v0, "ask a question"

    invoke-virtual {p0, v0, v4}, Lcom/instabug/bug/settings/a;->a(Ljava/lang/String;Z)V

    .line 23
    sget-object p0, Lcom/instabug/library/Feature;->BUG_REPORTING:Lcom/instabug/library/Feature;

    invoke-static {p0}, Lcom/instabug/library/core/InstabugCore;->isFeatureEnabled(Lcom/instabug/library/Feature;)Z

    move-result p0

    if-eqz p0, :cond_5

    if-eqz v4, :cond_4

    .line 24
    sget-object p0, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    goto :goto_2

    :cond_4
    sget-object p0, Lcom/instabug/library/Feature$State;->DISABLED:Lcom/instabug/library/Feature$State;

    :goto_2
    invoke-static {p0}, Lcom/instabug/library/core/InstabugCore;->setChatsState(Lcom/instabug/library/Feature$State;)V

    .line 26
    :cond_5
    invoke-static {}, Lcom/instabug/library/invocation/InvocationManager;->getInstance()Lcom/instabug/library/invocation/InvocationManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/instabug/library/invocation/InvocationManager;->notifyInvocationOptionChanged()V

    return-void
.end method
