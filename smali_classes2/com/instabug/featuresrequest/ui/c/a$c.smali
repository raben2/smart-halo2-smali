.class Lcom/instabug/featuresrequest/ui/c/a$c;
.super Ljava/lang/Object;
.source "FeatureRequestsDetailsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/featuresrequest/ui/c/a;->a(Lcom/instabug/featuresrequest/d/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/featuresrequest/ui/c/a;


# direct methods
.method constructor <init>(Lcom/instabug/featuresrequest/ui/c/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/c/a$c;->a:Lcom/instabug/featuresrequest/ui/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/c/a$c;->a:Lcom/instabug/featuresrequest/ui/c/a;

    invoke-static {v0}, Lcom/instabug/featuresrequest/ui/c/a;->f(Lcom/instabug/featuresrequest/ui/c/a;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/instabug/featuresrequest/ui/c/a;->b(Lcom/instabug/featuresrequest/ui/c/a;Z)Z

    return-void
.end method
