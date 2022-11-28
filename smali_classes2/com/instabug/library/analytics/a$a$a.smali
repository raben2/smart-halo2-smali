.class Lcom/instabug/library/analytics/a$a$a;
.super Ljava/lang/Object;
.source "AnalyticsLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/analytics/a$a;->a(Lcom/instabug/library/model/session/SessionState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/model/session/SessionState;

.field final synthetic b:Lcom/instabug/library/analytics/a$a;


# direct methods
.method constructor <init>(Lcom/instabug/library/analytics/a$a;Lcom/instabug/library/model/session/SessionState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/analytics/a$a$a;->b:Lcom/instabug/library/analytics/a$a;

    iput-object p2, p0, Lcom/instabug/library/analytics/a$a$a;->a:Lcom/instabug/library/model/session/SessionState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/analytics/a$a$a;->b:Lcom/instabug/library/analytics/a$a;

    iget-object v0, v0, Lcom/instabug/library/analytics/a$a;->a:Lcom/instabug/library/analytics/a;

    iget-object v1, p0, Lcom/instabug/library/analytics/a$a$a;->a:Lcom/instabug/library/model/session/SessionState;

    invoke-static {v0, v1}, Lcom/instabug/library/analytics/a;->a(Lcom/instabug/library/analytics/a;Lcom/instabug/library/model/session/SessionState;)V

    .line 2
    invoke-static {}, Lcom/instabug/library/analytics/util/d;->a()V

    return-void
.end method
