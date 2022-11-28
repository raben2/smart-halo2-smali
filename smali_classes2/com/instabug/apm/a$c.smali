.class Lcom/instabug/apm/a$c;
.super Ljava/lang/Object;
.source "APMImplementation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/apm/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/apm/f/a/a;


# direct methods
.method constructor <init>(Lcom/instabug/apm/a;Lcom/instabug/apm/f/a/a;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/instabug/apm/a$c;->a:Lcom/instabug/apm/f/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/a$c;->a:Lcom/instabug/apm/f/a/a;

    invoke-interface {v0}, Lcom/instabug/apm/f/a/a;->a()V

    return-void
.end method
