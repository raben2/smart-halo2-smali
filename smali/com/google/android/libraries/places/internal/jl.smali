.class public final Lcom/google/android/libraries/places/internal/jl;
.super Lcom/google/android/libraries/places/internal/kv;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/internal/mc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/internal/jl$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/kv<",
        "Lcom/google/android/libraries/places/internal/jl;",
        "Lcom/google/android/libraries/places/internal/jl$a;",
        ">;",
        "Lcom/google/android/libraries/places/internal/mc;"
    }
.end annotation


# static fields
.field public static final b:Lcom/google/android/libraries/places/internal/jl;

.field private static volatile c:Lcom/google/android/libraries/places/internal/mj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/mj<",
            "Lcom/google/android/libraries/places/internal/jl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/google/android/libraries/places/internal/lc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/lc<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/google/android/libraries/places/internal/jl;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/jl;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/jl;->b:Lcom/google/android/libraries/places/internal/jl;

    .line 29
    const-class v0, Lcom/google/android/libraries/places/internal/jl;

    sget-object v1, Lcom/google/android/libraries/places/internal/jl;->b:Lcom/google/android/libraries/places/internal/jl;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/kv;->a(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/kv;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/kv;-><init>()V

    .line 3
    sget-object v0, Lcom/google/android/libraries/places/internal/mn;->b:Lcom/google/android/libraries/places/internal/mn;

    .line 4
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/jl;->a:Lcom/google/android/libraries/places/internal/lc;

    return-void
.end method

.method public static a()Lcom/google/android/libraries/places/internal/jl$a;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/libraries/places/internal/jl;->b:Lcom/google/android/libraries/places/internal/jl;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kv;->f()Lcom/google/android/libraries/places/internal/kv$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/jl$a;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/google/android/libraries/places/internal/kv$d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/kv$d;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 27
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 16
    :pswitch_0
    sget-object p1, Lcom/google/android/libraries/places/internal/jl;->c:Lcom/google/android/libraries/places/internal/mj;

    if-nez p1, :cond_1

    .line 18
    const-class p2, Lcom/google/android/libraries/places/internal/jl;

    monitor-enter p2

    .line 19
    :try_start_0
    sget-object p1, Lcom/google/android/libraries/places/internal/jl;->c:Lcom/google/android/libraries/places/internal/mj;

    if-nez p1, :cond_0

    .line 21
    new-instance p1, Lcom/google/android/libraries/places/internal/jx;

    sget-object v0, Lcom/google/android/libraries/places/internal/jl;->b:Lcom/google/android/libraries/places/internal/jl;

    invoke-direct {p1, v0}, Lcom/google/android/libraries/places/internal/jx;-><init>(Lcom/google/android/libraries/places/internal/kv;)V

    .line 22
    sput-object p1, Lcom/google/android/libraries/places/internal/jl;->c:Lcom/google/android/libraries/places/internal/mj;

    .line 23
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 15
    :pswitch_1
    sget-object p1, Lcom/google/android/libraries/places/internal/jl;->b:Lcom/google/android/libraries/places/internal/jl;

    return-object p1

    .line 9
    :pswitch_2
    new-instance p1, Lcom/google/android/libraries/places/internal/jl$a;

    .line 10
    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/jl$a;-><init>()V

    return-object p1

    .line 8
    :pswitch_3
    new-instance p1, Lcom/google/android/libraries/places/internal/jl;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/jl;-><init>()V

    return-object p1

    .line 12
    :pswitch_4
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "a"

    aput-object v0, p1, p2

    const-string p2, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a"

    .line 14
    sget-object v0, Lcom/google/android/libraries/places/internal/jl;->b:Lcom/google/android/libraries/places/internal/jl;

    invoke-static {v0, p2, p1}, Lcom/google/android/libraries/places/internal/jl;->a(Lcom/google/android/libraries/places/internal/ma;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    const/4 p1, 0x0

    return-object p1

    .line 25
    :pswitch_6
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
