.class Lcom/instabug/library/c$a;
.super Ljava/lang/Object;
.source "InstabugDelegate.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/c;->H()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/instabug/library/model/session/SessionState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/c;


# direct methods
.method constructor <init>(Lcom/instabug/library/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/c$a;->a:Lcom/instabug/library/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/library/model/session/SessionState;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/instabug/library/model/session/SessionState;->FINISH:Lcom/instabug/library/model/session/SessionState;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->logEndSession(J)V

    .line 3
    iget-object p1, p0, Lcom/instabug/library/c$a;->a:Lcom/instabug/library/c;

    invoke-static {p1}, Lcom/instabug/library/c;->a(Lcom/instabug/library/c;)V

    .line 4
    iget-object p1, p0, Lcom/instabug/library/c$a;->a:Lcom/instabug/library/c;

    invoke-static {p1}, Lcom/instabug/library/c;->b(Lcom/instabug/library/c;)V

    .line 5
    iget-object p1, p0, Lcom/instabug/library/c$a;->a:Lcom/instabug/library/c;

    invoke-static {p1}, Lcom/instabug/library/c;->j(Lcom/instabug/library/c;)V

    .line 6
    invoke-static {}, Lcom/instabug/library/core/plugin/a;->g()V

    goto :goto_0

    .line 7
    :cond_0
    sget-object v0, Lcom/instabug/library/model/session/SessionState;->START:Lcom/instabug/library/model/session/SessionState;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/library/settings/SettingsManager;->getSessionsSyncConfigurations()Lcom/instabug/library/model/session/config/SessionsConfig;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/instabug/library/c$a;->a:Lcom/instabug/library/c;

    invoke-static {v0}, Lcom/instabug/library/c;->n(Lcom/instabug/library/c;)Lcom/instabug/library/m/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/m/f;->a(Lcom/instabug/library/model/session/config/SessionsConfig;)V

    .line 10
    new-instance p1, Lcom/instabug/library/g;

    iget-object v0, p0, Lcom/instabug/library/c$a;->a:Lcom/instabug/library/c;

    invoke-virtual {v0}, Lcom/instabug/library/c;->d()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/instabug/library/g;-><init>(Landroid/content/Context;)V

    .line 11
    invoke-virtual {p1}, Lcom/instabug/library/g;->a()Lcom/instabug/library/model/d;

    move-result-object p1

    .line 12
    invoke-static {p1}, Lcom/instabug/library/util/InstabugSDKLogger;->logSessionDetails(Lcom/instabug/library/model/d;)V

    .line 14
    iget-object p1, p0, Lcom/instabug/library/c$a;->a:Lcom/instabug/library/c;

    invoke-static {p1}, Lcom/instabug/library/c;->p(Lcom/instabug/library/c;)Lcom/instabug/library/util/TaskDebouncer;

    move-result-object p1

    new-instance v0, Lcom/instabug/library/c$a$a;

    invoke-direct {v0, p0}, Lcom/instabug/library/c$a$a;-><init>(Lcom/instabug/library/c$a;)V

    invoke-virtual {p1, v0}, Lcom/instabug/library/util/TaskDebouncer;->debounce(Ljava/lang/Runnable;)V

    .line 20
    iget-object p1, p0, Lcom/instabug/library/c$a;->a:Lcom/instabug/library/c;

    invoke-virtual {p1}, Lcom/instabug/library/c;->k()V

    .line 21
    iget-object p1, p0, Lcom/instabug/library/c$a;->a:Lcom/instabug/library/c;

    invoke-static {p1}, Lcom/instabug/library/c;->q(Lcom/instabug/library/c;)V

    .line 22
    iget-object p1, p0, Lcom/instabug/library/c$a;->a:Lcom/instabug/library/c;

    invoke-static {p1}, Lcom/instabug/library/c;->r(Lcom/instabug/library/c;)V

    .line 23
    invoke-static {}, Lcom/instabug/library/core/plugin/a;->i()V

    .line 25
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/instabug/library/c$a;->a:Lcom/instabug/library/c;

    invoke-static {p1}, Lcom/instabug/library/c;->s(Lcom/instabug/library/c;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/instabug/library/model/session/SessionState;

    invoke-virtual {p0, p1}, Lcom/instabug/library/c$a;->a(Lcom/instabug/library/model/session/SessionState;)V

    return-void
.end method
