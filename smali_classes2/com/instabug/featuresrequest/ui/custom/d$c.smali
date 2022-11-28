.class Lcom/instabug/featuresrequest/ui/custom/d$c;
.super Ljava/lang/Object;
.source "InstaToastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/featuresrequest/ui/custom/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/instabug/featuresrequest/ui/custom/d$b;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method constructor <init>(ILcom/instabug/featuresrequest/ui/custom/d$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/d$c;->a:Ljava/lang/ref/WeakReference;

    .line 3
    iput p1, p0, Lcom/instabug/featuresrequest/ui/custom/d$c;->b:I

    return-void
.end method

.method static synthetic a(Lcom/instabug/featuresrequest/ui/custom/d$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/instabug/featuresrequest/ui/custom/d$c;->b:I

    return p0
.end method

.method static synthetic a(Lcom/instabug/featuresrequest/ui/custom/d$c;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/instabug/featuresrequest/ui/custom/d$c;->b:I

    return p1
.end method

.method static synthetic b(Lcom/instabug/featuresrequest/ui/custom/d$c;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/featuresrequest/ui/custom/d$c;->a:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method a(Lcom/instabug/featuresrequest/ui/custom/d$b;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/d$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
