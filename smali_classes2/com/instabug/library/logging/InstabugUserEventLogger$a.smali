.class Lcom/instabug/library/logging/InstabugUserEventLogger$a;
.super Ljava/lang/Object;
.source "InstabugUserEventLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/logging/InstabugUserEventLogger;->logUserEvent(Ljava/lang/String;[Lcom/instabug/library/user/UserEventParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:[Lcom/instabug/library/user/UserEventParam;

.field final synthetic c:Lcom/instabug/library/logging/InstabugUserEventLogger;


# direct methods
.method constructor <init>(Lcom/instabug/library/logging/InstabugUserEventLogger;Ljava/lang/String;[Lcom/instabug/library/user/UserEventParam;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/logging/InstabugUserEventLogger$a;->c:Lcom/instabug/library/logging/InstabugUserEventLogger;

    iput-object p2, p0, Lcom/instabug/library/logging/InstabugUserEventLogger$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/instabug/library/logging/InstabugUserEventLogger$a;->b:[Lcom/instabug/library/user/UserEventParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/instabug/library/analytics/AnalyticsWrapper;->getInstance()Lcom/instabug/library/analytics/AnalyticsWrapper;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/instabug/library/analytics/model/Api$Parameter;

    new-instance v2, Lcom/instabug/library/analytics/model/Api$Parameter;

    invoke-direct {v2}, Lcom/instabug/library/analytics/model/Api$Parameter;-><init>()V

    const-string v3, "eventIdentifier"

    .line 2
    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setName(Ljava/lang/String;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setType(Ljava/lang/Class;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/instabug/library/analytics/model/Api$Parameter;

    invoke-direct {v2}, Lcom/instabug/library/analytics/model/Api$Parameter;-><init>()V

    const-string v4, "userEventParams"

    .line 4
    invoke-virtual {v2, v4}, Lcom/instabug/library/analytics/model/Api$Parameter;->setName(Ljava/lang/String;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    const-class v4, Lcom/instabug/library/user/UserEventParam;

    invoke-virtual {v2, v4}, Lcom/instabug/library/analytics/model/Api$Parameter;->setType(Ljava/lang/Class;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 5
    invoke-virtual {v0, v1}, Lcom/instabug/library/analytics/AnalyticsWrapper;->catchApiUsageAsync([Lcom/instabug/library/analytics/model/Api$Parameter;)V

    .line 9
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature;->USER_EVENTS:Lcom/instabug/library/Feature;

    invoke-virtual {v0, v1}, Lcom/instabug/library/d;->a(Ljava/lang/Object;)Lcom/instabug/library/Feature$State;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne v0, v1, :cond_3

    .line 11
    new-instance v0, Lcom/instabug/library/user/UserEvent;

    invoke-direct {v0}, Lcom/instabug/library/user/UserEvent;-><init>()V

    iget-object v1, p0, Lcom/instabug/library/logging/InstabugUserEventLogger$a;->a:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v1}, Lcom/instabug/library/user/UserEvent;->setEventIdentifier(Ljava/lang/String;)Lcom/instabug/library/user/UserEvent;

    move-result-object v0

    .line 13
    invoke-static {}, Lcom/instabug/library/util/InstabugDateFormatter;->getCurrentUTCTimeStampInMiliSeconds()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/instabug/library/user/UserEvent;->setDate(J)Lcom/instabug/library/user/UserEvent;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/instabug/library/logging/InstabugUserEventLogger$a;->b:[Lcom/instabug/library/user/UserEventParam;

    array-length v2, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_0

    aget-object v6, v1, v5

    .line 15
    invoke-virtual {v0, v6}, Lcom/instabug/library/user/UserEvent;->addParam(Lcom/instabug/library/user/UserEventParam;)Lcom/instabug/library/user/UserEvent;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/instabug/library/logging/InstabugUserEventLogger$a;->c:Lcom/instabug/library/logging/InstabugUserEventLogger;

    invoke-static {v1}, Lcom/instabug/library/logging/InstabugUserEventLogger;->access$000(Lcom/instabug/library/logging/InstabugUserEventLogger;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x3e8

    if-lt v1, v2, :cond_1

    .line 18
    iget-object v1, p0, Lcom/instabug/library/logging/InstabugUserEventLogger$a;->c:Lcom/instabug/library/logging/InstabugUserEventLogger;

    invoke-static {v1}, Lcom/instabug/library/logging/InstabugUserEventLogger;->access$000(Lcom/instabug/library/logging/InstabugUserEventLogger;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 20
    :cond_1
    iget-object v1, p0, Lcom/instabug/library/logging/InstabugUserEventLogger$a;->c:Lcom/instabug/library/logging/InstabugUserEventLogger;

    invoke-static {v1}, Lcom/instabug/library/logging/InstabugUserEventLogger;->access$000(Lcom/instabug/library/logging/InstabugUserEventLogger;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v0, p0, Lcom/instabug/library/logging/InstabugUserEventLogger$a;->c:Lcom/instabug/library/logging/InstabugUserEventLogger;

    invoke-static {v0}, Lcom/instabug/library/logging/InstabugUserEventLogger;->access$100(Lcom/instabug/library/logging/InstabugUserEventLogger;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/logging/InstabugUserEventLogger$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 25
    iget-object v1, p0, Lcom/instabug/library/logging/InstabugUserEventLogger$a;->c:Lcom/instabug/library/logging/InstabugUserEventLogger;

    invoke-static {v1}, Lcom/instabug/library/logging/InstabugUserEventLogger;->access$100(Lcom/instabug/library/logging/InstabugUserEventLogger;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/instabug/library/logging/InstabugUserEventLogger$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 27
    :cond_2
    iget-object v0, p0, Lcom/instabug/library/logging/InstabugUserEventLogger$a;->c:Lcom/instabug/library/logging/InstabugUserEventLogger;

    invoke-static {v0}, Lcom/instabug/library/logging/InstabugUserEventLogger;->access$100(Lcom/instabug/library/logging/InstabugUserEventLogger;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/logging/InstabugUserEventLogger$a;->a:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :goto_1
    iget-object v0, p0, Lcom/instabug/library/logging/InstabugUserEventLogger$a;->c:Lcom/instabug/library/logging/InstabugUserEventLogger;

    invoke-static {}, Lcom/instabug/library/user/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/instabug/library/user/b;->k()Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-static {v0, v1, v2}, Lcom/instabug/library/logging/InstabugUserEventLogger;->access$200(Lcom/instabug/library/logging/InstabugUserEventLogger;Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method
