.class Lcom/instabug/library/logging/InstabugUserEventLogger$b;
.super Ljava/lang/Object;
.source "InstabugUserEventLogger.java"

# interfaces
.implements Lcom/instabug/library/util/memory/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/logging/InstabugUserEventLogger;->runInsertionHandler(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/instabug/library/logging/InstabugUserEventLogger;


# direct methods
.method constructor <init>(Lcom/instabug/library/logging/InstabugUserEventLogger;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/logging/InstabugUserEventLogger$b;->c:Lcom/instabug/library/logging/InstabugUserEventLogger;

    iput-object p2, p0, Lcom/instabug/library/logging/InstabugUserEventLogger$b;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/instabug/library/logging/InstabugUserEventLogger$b;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAffirmed()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/instabug/library/logging/InstabugUserEventLogger$b;->c:Lcom/instabug/library/logging/InstabugUserEventLogger;

    invoke-static {v0}, Lcom/instabug/library/logging/InstabugUserEventLogger;->access$100(Lcom/instabug/library/logging/InstabugUserEventLogger;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    iget-object v2, p0, Lcom/instabug/library/logging/InstabugUserEventLogger$b;->c:Lcom/instabug/library/logging/InstabugUserEventLogger;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v4, p0, Lcom/instabug/library/logging/InstabugUserEventLogger$b;->a:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/instabug/library/logging/InstabugUserEventLogger$b;->b:Z

    invoke-static {v2, v3, v1, v4, v5}, Lcom/instabug/library/logging/InstabugUserEventLogger;->access$300(Lcom/instabug/library/logging/InstabugUserEventLogger;Ljava/lang/String;ILjava/lang/String;Z)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/logging/InstabugUserEventLogger$b;->c:Lcom/instabug/library/logging/InstabugUserEventLogger;

    invoke-static {v0}, Lcom/instabug/library/logging/InstabugUserEventLogger;->access$100(Lcom/instabug/library/logging/InstabugUserEventLogger;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/instabug/library/logging/InstabugUserEventLogger;

    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public onDenied()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "Failed to update user events due to low memory"

    .line 1
    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
