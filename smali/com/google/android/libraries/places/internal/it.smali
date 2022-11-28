.class public final Lcom/google/android/libraries/places/internal/it;
.super Lcom/google/android/libraries/places/internal/kv;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/internal/mc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/internal/it$b;,
        Lcom/google/android/libraries/places/internal/it$a;,
        Lcom/google/android/libraries/places/internal/it$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/kv<",
        "Lcom/google/android/libraries/places/internal/it;",
        "Lcom/google/android/libraries/places/internal/it$b;",
        ">;",
        "Lcom/google/android/libraries/places/internal/mc;"
    }
.end annotation


# static fields
.field public static final p:Lcom/google/android/libraries/places/internal/it;

.field private static volatile s:Lcom/google/android/libraries/places/internal/mj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/mj<",
            "Lcom/google/android/libraries/places/internal/it;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:Z

.field public o:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/google/android/libraries/places/internal/it;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/it;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/it;->p:Lcom/google/android/libraries/places/internal/it;

    .line 29
    const-class v0, Lcom/google/android/libraries/places/internal/it;

    sget-object v1, Lcom/google/android/libraries/places/internal/it;->p:Lcom/google/android/libraries/places/internal/it;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/kv;->a(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/kv;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/kv;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/google/android/libraries/places/internal/it;->c:I

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/libraries/places/internal/kv$d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 4
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
    sget-object p1, Lcom/google/android/libraries/places/internal/it;->s:Lcom/google/android/libraries/places/internal/mj;

    if-nez p1, :cond_1

    .line 18
    const-class p2, Lcom/google/android/libraries/places/internal/it;

    monitor-enter p2

    .line 19
    :try_start_0
    sget-object p1, Lcom/google/android/libraries/places/internal/it;->s:Lcom/google/android/libraries/places/internal/mj;

    if-nez p1, :cond_0

    .line 21
    new-instance p1, Lcom/google/android/libraries/places/internal/jx;

    sget-object v0, Lcom/google/android/libraries/places/internal/it;->p:Lcom/google/android/libraries/places/internal/it;

    invoke-direct {p1, v0}, Lcom/google/android/libraries/places/internal/jx;-><init>(Lcom/google/android/libraries/places/internal/kv;)V

    .line 22
    sput-object p1, Lcom/google/android/libraries/places/internal/it;->s:Lcom/google/android/libraries/places/internal/mj;

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
    sget-object p1, Lcom/google/android/libraries/places/internal/it;->p:Lcom/google/android/libraries/places/internal/it;

    return-object p1

    .line 6
    :pswitch_2
    new-instance p1, Lcom/google/android/libraries/places/internal/it$b;

    .line 7
    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/it$b;-><init>()V

    return-object p1

    .line 5
    :pswitch_3
    new-instance p1, Lcom/google/android/libraries/places/internal/it;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/it;-><init>()V

    return-object p1

    :pswitch_4
    const/16 p1, 0x11

    .line 9
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "a"

    aput-object v1, p1, v0

    const-string v0, "b"

    aput-object v0, p1, p2

    const/4 p2, 0x2

    .line 10
    invoke-static {}, Lcom/google/android/libraries/places/internal/it$c;->b()Lcom/google/android/libraries/places/internal/kz;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x3

    const-string v0, "c"

    aput-object v0, p1, p2

    const/4 p2, 0x4

    .line 11
    invoke-static {}, Lcom/google/android/libraries/places/internal/it$a;->b()Lcom/google/android/libraries/places/internal/kz;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x5

    const-string v0, "d"

    aput-object v0, p1, p2

    const/4 p2, 0x6

    const-string v0, "e"

    aput-object v0, p1, p2

    const/4 p2, 0x7

    const-string v0, "f"

    aput-object v0, p1, p2

    const/16 p2, 0x8

    const-string v0, "g"

    aput-object v0, p1, p2

    const/16 p2, 0x9

    const-string v0, "h"

    aput-object v0, p1, p2

    const/16 p2, 0xa

    const-string v0, "i"

    aput-object v0, p1, p2

    const/16 p2, 0xb

    const-string v0, "k"

    aput-object v0, p1, p2

    const/16 p2, 0xc

    const-string v0, "l"

    aput-object v0, p1, p2

    const/16 p2, 0xd

    const-string v0, "m"

    aput-object v0, p1, p2

    const/16 p2, 0xe

    const-string v0, "n"

    aput-object v0, p1, p2

    const/16 p2, 0xf

    const-string v0, "o"

    aput-object v0, p1, p2

    const/16 p2, 0x10

    const-string v0, "j"

    aput-object v0, p1, p2

    const-string p2, "\u0001\u000e\u0000\u0001\u0001\u000f\u000e\u0000\u0000\u0000\u0001\u000c\u0000\u0002\u000c\u0001\u0003\u0007\u0002\u0004\u0007\u0003\u0005\u0007\u0004\u0006\u000b\u0005\u0007\u000b\u0006\u0008\u000b\u0007\n\u000b\t\u000b\u000b\n\u000c\u000b\u000b\r\u0007\u000c\u000e\u000b\r\u000f\u000b\u0008"

    .line 14
    sget-object v0, Lcom/google/android/libraries/places/internal/it;->p:Lcom/google/android/libraries/places/internal/it;

    invoke-static {v0, p2, p1}, Lcom/google/android/libraries/places/internal/it;->a(Lcom/google/android/libraries/places/internal/ma;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
