.class public Lcom/instabug/library/internal/orchestrator/i;
.super Ljava/lang/Object;
.source "MigrateUserAttributesAction.java"

# interfaces
.implements Lcom/instabug/library/internal/orchestrator/Action;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/library/internal/orchestrator/i;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/user/a;->a()Lcom/instabug/library/user/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/internal/orchestrator/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/instabug/library/user/a;->a(Ljava/lang/String;)V

    return-void
.end method
