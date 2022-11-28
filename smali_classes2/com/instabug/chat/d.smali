.class public Lcom/instabug/chat/d;
.super Ljava/lang/Object;
.source "RepliesWrapper.java"


# direct methods
.method public static a()I
    .locals 1

    .line 5
    invoke-static {}, Lcom/instabug/chat/ChatsDelegate;->getUnreadMessagesCount()I

    move-result v0

    return v0
.end method

.method public static a(I)V
    .locals 1

    .line 6
    invoke-static {}, Lcom/instabug/chat/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-static {p0}, Lcom/instabug/chat/settings/a;->a(I)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/instabug/library/Feature$State;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/instabug/library/core/InstabugCore;->setRepliesState(Lcom/instabug/library/Feature$State;)V

    .line 2
    invoke-static {p0}, Lcom/instabug/library/core/InstabugCore;->setPushNotificationState(Lcom/instabug/library/Feature$State;)V

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1

    .line 3
    invoke-static {}, Lcom/instabug/chat/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p0}, Lcom/instabug/chat/ChatsDelegate;->setNewMessageHandler(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 10
    invoke-static {}, Lcom/instabug/chat/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    invoke-static {p0}, Lcom/instabug/chat/settings/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Z)V
    .locals 1

    .line 12
    invoke-static {}, Lcom/instabug/chat/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    invoke-static {p0}, Lcom/instabug/chat/settings/a;->a(Z)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/os/Bundle;)Z
    .locals 1

    .line 8
    invoke-static {}, Lcom/instabug/chat/f/b;->a()Lcom/instabug/chat/f/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instabug/chat/f/b;->a(Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 9
    invoke-static {}, Lcom/instabug/chat/f/b;->a()Lcom/instabug/chat/f/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instabug/chat/f/b;->a(Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/os/Bundle;)V
    .locals 1

    .line 4
    invoke-static {}, Lcom/instabug/chat/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {p0}, Lcom/instabug/chat/ChatsDelegate;->showNotification(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static b(Lcom/instabug/library/Feature$State;)V
    .locals 0

    .line 10
    invoke-static {p0}, Lcom/instabug/chat/d;->a(Lcom/instabug/library/Feature$State;)V

    .line 11
    invoke-static {}, Lcom/instabug/library/invocation/InvocationManager;->getInstance()Lcom/instabug/library/invocation/InvocationManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/instabug/library/invocation/InvocationManager;->notifyInvocationOptionChanged()V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/instabug/chat/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/instabug/chat/ChatsDelegate;->setPushNotificationRegistrationToken(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static b(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-static {}, Lcom/instabug/chat/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-static {p0}, Lcom/instabug/chat/ChatsDelegate;->showNotification(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static b(Z)V
    .locals 1

    .line 8
    invoke-static {}, Lcom/instabug/chat/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-static {p0}, Lcom/instabug/chat/ChatsDelegate;->enableInAppNotificationSound(Z)V

    :cond_0
    return-void
.end method

.method public static b()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/chat/cache/ChatsCacheManager;->getValidChats()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static c(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/chat/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/instabug/chat/ChatsDelegate;->enableNotification(Z)V

    :cond_0
    return-void
.end method

.method private static c()Z
    .locals 1

    .line 3
    sget-object v0, Lcom/instabug/library/Feature;->REPLIES:Lcom/instabug/library/Feature;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->isFeatureEnabled(Lcom/instabug/library/Feature;)Z

    move-result v0

    return v0
.end method

.method public static d()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/chat/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/instabug/chat/cache/ChatsCacheManager;->getValidChats()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/chat/ChatsDelegate;->showChats()V

    :cond_0
    return-void
.end method

.method public static d(Z)V
    .locals 1

    .line 3
    invoke-static {}, Lcom/instabug/chat/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p0}, Lcom/instabug/chat/settings/a;->d(Z)V

    :cond_0
    return-void
.end method
