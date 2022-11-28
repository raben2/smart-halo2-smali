.class Lcom/instabug/library/c$r;
.super Ljava/lang/Object;
.source "InstabugDelegate.java"

# interfaces
.implements Lcom/instabug/library/internal/orchestrator/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/c;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/c;


# direct methods
.method constructor <init>(Lcom/instabug/library/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/c$r;->a:Lcom/instabug/library/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/c$r;->a:Lcom/instabug/library/c;

    invoke-static {v0}, Lcom/instabug/library/c;->c(Lcom/instabug/library/c;)V

    return-void
.end method
