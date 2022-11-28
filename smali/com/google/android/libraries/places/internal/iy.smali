.class public final Lcom/google/android/libraries/places/internal/iy;
.super Lcom/google/android/libraries/places/internal/kv;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/internal/mc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/internal/iy$a;,
        Lcom/google/android/libraries/places/internal/iy$c;,
        Lcom/google/android/libraries/places/internal/iy$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/kv<",
        "Lcom/google/android/libraries/places/internal/iy;",
        "Lcom/google/android/libraries/places/internal/iy$a;",
        ">;",
        "Lcom/google/android/libraries/places/internal/mc;"
    }
.end annotation


# static fields
.field public static final o:Lcom/google/android/libraries/places/internal/iy;

.field private static volatile s:Lcom/google/android/libraries/places/internal/mj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/mj<",
            "Lcom/google/android/libraries/places/internal/iy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:I

.field public c:Lcom/google/android/libraries/places/internal/ie;

.field public d:Lcom/google/android/libraries/places/internal/if;

.field public e:Lcom/google/android/libraries/places/internal/jm;

.field public f:Lcom/google/android/libraries/places/internal/iq;

.field public g:Lcom/google/android/libraries/places/internal/ji;

.field public h:Lcom/google/android/libraries/places/internal/jf;

.field public i:Lcom/google/android/libraries/places/internal/it;

.field public j:Lcom/google/android/libraries/places/internal/ik;

.field public k:Z

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:I

.field private p:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lcom/google/android/libraries/places/internal/iy;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/iy;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/iy;->o:Lcom/google/android/libraries/places/internal/iy;

    .line 34
    const-class v0, Lcom/google/android/libraries/places/internal/iy;

    sget-object v1, Lcom/google/android/libraries/places/internal/iy;->o:Lcom/google/android/libraries/places/internal/iy;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/kv;->a(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/kv;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/kv;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Lcom/google/android/libraries/places/internal/iy;->p:B

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/google/android/libraries/places/internal/iy;->b:I

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/iy;->l:Ljava/lang/String;

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/iy;->m:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/libraries/places/internal/kv$d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 7
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/kv$d;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 32
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 20
    :pswitch_0
    sget-object p1, Lcom/google/android/libraries/places/internal/iy;->s:Lcom/google/android/libraries/places/internal/mj;

    if-nez p1, :cond_1

    .line 22
    const-class p2, Lcom/google/android/libraries/places/internal/iy;

    monitor-enter p2

    .line 23
    :try_start_0
    sget-object p1, Lcom/google/android/libraries/places/internal/iy;->s:Lcom/google/android/libraries/places/internal/mj;

    if-nez p1, :cond_0

    .line 25
    new-instance p1, Lcom/google/android/libraries/places/internal/jx;

    sget-object v0, Lcom/google/android/libraries/places/internal/iy;->o:Lcom/google/android/libraries/places/internal/iy;

    invoke-direct {p1, v0}, Lcom/google/android/libraries/places/internal/jx;-><init>(Lcom/google/android/libraries/places/internal/kv;)V

    .line 26
    sput-object p1, Lcom/google/android/libraries/places/internal/iy;->s:Lcom/google/android/libraries/places/internal/mj;

    .line 27
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

    .line 19
    :pswitch_1
    sget-object p1, Lcom/google/android/libraries/places/internal/iy;->o:Lcom/google/android/libraries/places/internal/iy;

    return-object p1

    .line 9
    :pswitch_2
    new-instance p1, Lcom/google/android/libraries/places/internal/iy$a;

    .line 10
    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/iy$a;-><init>()V

    return-object p1

    .line 8
    :pswitch_3
    new-instance p1, Lcom/google/android/libraries/places/internal/iy;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/iy;-><init>()V

    return-object p1

    :pswitch_4
    const/16 p1, 0x10

    .line 12
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "a"

    aput-object p2, p1, v1

    const-string p2, "b"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    .line 13
    invoke-static {}, Lcom/google/android/libraries/places/internal/iy$b;->b()Lcom/google/android/libraries/places/internal/kz;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x3

    const-string v0, "c"

    aput-object v0, p1, p2

    const/4 p2, 0x4

    const-string v0, "d"

    aput-object v0, p1, p2

    const/4 p2, 0x5

    const-string v0, "e"

    aput-object v0, p1, p2

    const/4 p2, 0x6

    const-string v0, "f"

    aput-object v0, p1, p2

    const/4 p2, 0x7

    const-string v0, "g"

    aput-object v0, p1, p2

    const/16 p2, 0x8

    const-string v0, "h"

    aput-object v0, p1, p2

    const/16 p2, 0x9

    const-string v0, "i"

    aput-object v0, p1, p2

    const/16 p2, 0xa

    const-string v0, "j"

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

    .line 16
    invoke-static {}, Lcom/google/android/libraries/places/internal/iy$c;->b()Lcom/google/android/libraries/places/internal/kz;

    move-result-object v0

    aput-object v0, p1, p2

    const-string p2, "\u0001\r\u0000\u0001\u0001 \r\u0000\u0000\u0003\u0001\u000c\u0001\u0002\t\u0002\u0003\u0409\u0003\u0005\u0409\u0006\u0008\u0409\u0008\u000c\t\t\u000e\t\n\u0012\t\u000e\u0018\t\u0017\u001b\u0007\u0018\u001c\u0008\u0019\u001e\u0008\u001b \u000c\u001d"

    .line 18
    sget-object v0, Lcom/google/android/libraries/places/internal/iy;->o:Lcom/google/android/libraries/places/internal/iy;

    invoke-static {v0, p2, p1}, Lcom/google/android/libraries/places/internal/iy;->a(Lcom/google/android/libraries/places/internal/ma;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    if-nez p2, :cond_2

    const/4 v0, 0x0

    :cond_2
    int-to-byte p1, v0

    .line 30
    iput-byte p1, p0, Lcom/google/android/libraries/places/internal/iy;->p:B

    const/4 p1, 0x0

    return-object p1

    .line 29
    :pswitch_6
    iget-byte p1, p0, Lcom/google/android/libraries/places/internal/iy;->p:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

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
