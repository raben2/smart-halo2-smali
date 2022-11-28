.class public final Lcom/google/android/libraries/places/internal/ji;
.super Lcom/google/android/libraries/places/internal/kv;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/internal/mc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/internal/ji$a;,
        Lcom/google/android/libraries/places/internal/ji$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/kv<",
        "Lcom/google/android/libraries/places/internal/ji;",
        "Lcom/google/android/libraries/places/internal/ji$a;",
        ">;",
        "Lcom/google/android/libraries/places/internal/mc;"
    }
.end annotation


# static fields
.field public static final c:Lcom/google/android/libraries/places/internal/ji;

.field private static volatile d:Lcom/google/android/libraries/places/internal/mj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/mj<",
            "Lcom/google/android/libraries/places/internal/ji;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/google/android/libraries/places/internal/ji;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/ji;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/ji;->c:Lcom/google/android/libraries/places/internal/ji;

    .line 26
    const-class v0, Lcom/google/android/libraries/places/internal/ji;

    sget-object v1, Lcom/google/android/libraries/places/internal/ji;->c:Lcom/google/android/libraries/places/internal/ji;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/kv;->a(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/kv;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/kv;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/libraries/places/internal/kv$d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 3
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/kv$d;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 24
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 13
    :pswitch_0
    sget-object p1, Lcom/google/android/libraries/places/internal/ji;->d:Lcom/google/android/libraries/places/internal/mj;

    if-nez p1, :cond_1

    .line 15
    const-class p2, Lcom/google/android/libraries/places/internal/ji;

    monitor-enter p2

    .line 16
    :try_start_0
    sget-object p1, Lcom/google/android/libraries/places/internal/ji;->d:Lcom/google/android/libraries/places/internal/mj;

    if-nez p1, :cond_0

    .line 18
    new-instance p1, Lcom/google/android/libraries/places/internal/jx;

    sget-object v0, Lcom/google/android/libraries/places/internal/ji;->c:Lcom/google/android/libraries/places/internal/ji;

    invoke-direct {p1, v0}, Lcom/google/android/libraries/places/internal/jx;-><init>(Lcom/google/android/libraries/places/internal/kv;)V

    .line 19
    sput-object p1, Lcom/google/android/libraries/places/internal/ji;->d:Lcom/google/android/libraries/places/internal/mj;

    .line 20
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

    .line 12
    :pswitch_1
    sget-object p1, Lcom/google/android/libraries/places/internal/ji;->c:Lcom/google/android/libraries/places/internal/ji;

    return-object p1

    .line 5
    :pswitch_2
    new-instance p1, Lcom/google/android/libraries/places/internal/ji$a;

    .line 6
    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ji$a;-><init>()V

    return-object p1

    .line 4
    :pswitch_3
    new-instance p1, Lcom/google/android/libraries/places/internal/ji;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ji;-><init>()V

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    .line 8
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "a"

    aput-object v1, p1, v0

    const-string v0, "b"

    aput-object v0, p1, p2

    const/4 p2, 0x2

    .line 9
    invoke-static {}, Lcom/google/android/libraries/places/internal/ji$b;->b()Lcom/google/android/libraries/places/internal/kz;

    move-result-object v0

    aput-object v0, p1, p2

    const-string p2, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000c\u0000"

    .line 11
    sget-object v0, Lcom/google/android/libraries/places/internal/ji;->c:Lcom/google/android/libraries/places/internal/ji;

    invoke-static {v0, p2, p1}, Lcom/google/android/libraries/places/internal/ji;->a(Lcom/google/android/libraries/places/internal/ma;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    const/4 p1, 0x0

    return-object p1

    .line 22
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
