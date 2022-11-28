.class public Lcom/instabug/chat/b;
.super Ljava/lang/Object;
.source "ChatsWrapper.java"


# direct methods
.method public static a()V
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/Feature;->DEPRECATED_CHATS:Lcom/instabug/library/Feature;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->isFeatureEnabled(Lcom/instabug/library/Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/chat/ChatsDelegate;->openNewChat()V

    :cond_0
    return-void
.end method

.method public static a(Lcom/instabug/library/Feature$State;)V
    .locals 0

    .line 3
    invoke-static {p0}, Lcom/instabug/library/core/InstabugCore;->setChatsState(Lcom/instabug/library/Feature$State;)V

    .line 4
    invoke-static {p0}, Lcom/instabug/library/core/InstabugCore;->setDeprecatedChatState(Lcom/instabug/library/Feature$State;)V

    .line 5
    invoke-static {}, Lcom/instabug/library/invocation/InvocationManager;->getInstance()Lcom/instabug/library/invocation/InvocationManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/instabug/library/invocation/InvocationManager;->notifyInvocationOptionChanged()V

    return-void
.end method
