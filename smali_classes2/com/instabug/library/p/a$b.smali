.class Lcom/instabug/library/p/a$b;
.super Ljava/lang/Object;
.source "MotionEventRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/p/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/p/a$b$a;
    }
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:Lcom/instabug/library/p/a$b$a;


# direct methods
.method public constructor <init>(Lcom/instabug/library/p/a$b$a;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/instabug/library/p/a$b;->a:Landroid/view/View;

    .line 3
    iput-object p1, p0, Lcom/instabug/library/p/a$b;->b:Lcom/instabug/library/p/a$b$a;

    return-void
.end method

.method static a(Landroid/view/View;)Lcom/instabug/library/p/a$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/instabug/library/p/a$b;

    sget-object v1, Lcom/instabug/library/p/a$b$a;->SCROLLABLE:Lcom/instabug/library/p/a$b$a;

    invoke-direct {v0, v1, p0}, Lcom/instabug/library/p/a$b;-><init>(Lcom/instabug/library/p/a$b$a;Landroid/view/View;)V

    return-object v0
.end method

.method static b(Landroid/view/View;)Lcom/instabug/library/p/a$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/instabug/library/p/a$b;

    sget-object v1, Lcom/instabug/library/p/a$b$a;->SWIPEABLE:Lcom/instabug/library/p/a$b$a;

    invoke-direct {v0, v1, p0}, Lcom/instabug/library/p/a$b;-><init>(Lcom/instabug/library/p/a$b$a;Landroid/view/View;)V

    return-object v0
.end method
