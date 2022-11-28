.class public Lcom/instabug/library/e;
.super Ljava/lang/Object;
.source "InstabugTouchesCoordinates.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/e$a;
    }
.end annotation


# static fields
.field private static a:Lcom/instabug/library/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/library/e;

    invoke-direct {v0}, Lcom/instabug/library/e;-><init>()V

    sput-object v0, Lcom/instabug/library/e;->a:Lcom/instabug/library/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/instabug/library/e;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/e;->a:Lcom/instabug/library/e;

    return-object v0
.end method


# virtual methods
.method public a([Lcom/instabug/library/e$a;)V
    .locals 1
    .param p1    # [Lcom/instabug/library/e$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/instabug/library/e$a;

    :goto_0
    return-void
.end method
