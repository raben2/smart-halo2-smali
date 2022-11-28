.class public final Lcom/google/android/libraries/places/internal/ir;
.super Lcom/google/android/libraries/places/internal/kv;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/internal/mc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/internal/ir$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/kv<",
        "Lcom/google/android/libraries/places/internal/ir;",
        "Lcom/google/android/libraries/places/internal/ir$a;",
        ">;",
        "Lcom/google/android/libraries/places/internal/mc;"
    }
.end annotation


# static fields
.field public static final c:Lcom/google/android/libraries/places/internal/ir;

.field private static volatile e:Lcom/google/android/libraries/places/internal/mj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/mj<",
            "Lcom/google/android/libraries/places/internal/ir;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:Lcom/google/android/libraries/places/internal/if;

.field private d:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/google/android/libraries/places/internal/ir;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/ir;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/ir;->c:Lcom/google/android/libraries/places/internal/ir;

    .line 27
    const-class v0, Lcom/google/android/libraries/places/internal/ir;

    sget-object v1, Lcom/google/android/libraries/places/internal/ir;->c:Lcom/google/android/libraries/places/internal/ir;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/kv;->a(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/kv;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/kv;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Lcom/google/android/libraries/places/internal/ir;->d:B

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/libraries/places/internal/kv$d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 4
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/kv$d;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 25
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 13
    :pswitch_0
    sget-object p1, Lcom/google/android/libraries/places/internal/ir;->e:Lcom/google/android/libraries/places/internal/mj;

    if-nez p1, :cond_1

    .line 15
    const-class p2, Lcom/google/android/libraries/places/internal/ir;

    monitor-enter p2

    .line 16
    :try_start_0
    sget-object p1, Lcom/google/android/libraries/places/internal/ir;->e:Lcom/google/android/libraries/places/internal/mj;

    if-nez p1, :cond_0

    .line 18
    new-instance p1, Lcom/google/android/libraries/places/internal/jx;

    sget-object v0, Lcom/google/android/libraries/places/internal/ir;->c:Lcom/google/android/libraries/places/internal/ir;

    invoke-direct {p1, v0}, Lcom/google/android/libraries/places/internal/jx;-><init>(Lcom/google/android/libraries/places/internal/kv;)V

    .line 19
    sput-object p1, Lcom/google/android/libraries/places/internal/ir;->e:Lcom/google/android/libraries/places/internal/mj;

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
    sget-object p1, Lcom/google/android/libraries/places/internal/ir;->c:Lcom/google/android/libraries/places/internal/ir;

    return-object p1

    .line 6
    :pswitch_2
    new-instance p1, Lcom/google/android/libraries/places/internal/ir$a;

    .line 7
    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ir$a;-><init>()V

    return-object p1

    .line 5
    :pswitch_3
    new-instance p1, Lcom/google/android/libraries/places/internal/ir;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ir;-><init>()V

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    .line 9
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "a"

    aput-object p2, p1, v1

    const-string p2, "b"

    aput-object p2, p1, v0

    const-string p2, "\u0001\u0001\u0000\u0001\u0002\u0002\u0001\u0000\u0000\u0001\u0002\u0409\u0001"

    .line 11
    sget-object v0, Lcom/google/android/libraries/places/internal/ir;->c:Lcom/google/android/libraries/places/internal/ir;

    invoke-static {v0, p2, p1}, Lcom/google/android/libraries/places/internal/ir;->a(Lcom/google/android/libraries/places/internal/ma;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    if-nez p2, :cond_2

    const/4 v0, 0x0

    :cond_2
    int-to-byte p1, v0

    .line 23
    iput-byte p1, p0, Lcom/google/android/libraries/places/internal/ir;->d:B

    const/4 p1, 0x0

    return-object p1

    .line 22
    :pswitch_6
    iget-byte p1, p0, Lcom/google/android/libraries/places/internal/ir;->d:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    nop

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
