.class public final Lcom/google/android/libraries/places/internal/jm;
.super Lcom/google/android/libraries/places/internal/kv;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/internal/mc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/internal/jm$a;,
        Lcom/google/android/libraries/places/internal/jm$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/kv<",
        "Lcom/google/android/libraries/places/internal/jm;",
        "Lcom/google/android/libraries/places/internal/jm$a;",
        ">;",
        "Lcom/google/android/libraries/places/internal/mc;"
    }
.end annotation


# static fields
.field public static final j:Lcom/google/android/libraries/places/internal/jm;

.field private static volatile l:Lcom/google/android/libraries/places/internal/mj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/mj<",
            "Lcom/google/android/libraries/places/internal/jm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lcom/google/android/libraries/places/internal/jp;

.field public f:Lcom/google/android/libraries/places/internal/je;

.field public g:Lcom/google/android/libraries/places/internal/ir;

.field public h:Lcom/google/android/libraries/places/internal/jd;

.field public i:Lcom/google/android/libraries/places/internal/is;

.field private k:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/google/android/libraries/places/internal/jm;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/jm;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/jm;->j:Lcom/google/android/libraries/places/internal/jm;

    .line 30
    const-class v0, Lcom/google/android/libraries/places/internal/jm;

    sget-object v1, Lcom/google/android/libraries/places/internal/jm;->j:Lcom/google/android/libraries/places/internal/jm;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/kv;->a(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/kv;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/kv;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Lcom/google/android/libraries/places/internal/jm;->k:B

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/jm;->c:Ljava/lang/String;

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/jm;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/libraries/places/internal/kv$d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 6
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/kv$d;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 28
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 16
    :pswitch_0
    sget-object p1, Lcom/google/android/libraries/places/internal/jm;->l:Lcom/google/android/libraries/places/internal/mj;

    if-nez p1, :cond_1

    .line 18
    const-class p2, Lcom/google/android/libraries/places/internal/jm;

    monitor-enter p2

    .line 19
    :try_start_0
    sget-object p1, Lcom/google/android/libraries/places/internal/jm;->l:Lcom/google/android/libraries/places/internal/mj;

    if-nez p1, :cond_0

    .line 21
    new-instance p1, Lcom/google/android/libraries/places/internal/jx;

    sget-object v0, Lcom/google/android/libraries/places/internal/jm;->j:Lcom/google/android/libraries/places/internal/jm;

    invoke-direct {p1, v0}, Lcom/google/android/libraries/places/internal/jx;-><init>(Lcom/google/android/libraries/places/internal/kv;)V

    .line 22
    sput-object p1, Lcom/google/android/libraries/places/internal/jm;->l:Lcom/google/android/libraries/places/internal/mj;

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
    sget-object p1, Lcom/google/android/libraries/places/internal/jm;->j:Lcom/google/android/libraries/places/internal/jm;

    return-object p1

    .line 8
    :pswitch_2
    new-instance p1, Lcom/google/android/libraries/places/internal/jm$a;

    .line 9
    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/jm$a;-><init>()V

    return-object p1

    .line 7
    :pswitch_3
    new-instance p1, Lcom/google/android/libraries/places/internal/jm;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/jm;-><init>()V

    return-object p1

    :pswitch_4
    const/16 p1, 0xa

    .line 11
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "a"

    aput-object p2, p1, v1

    const-string p2, "b"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    .line 12
    invoke-static {}, Lcom/google/android/libraries/places/internal/jm$b;->b()Lcom/google/android/libraries/places/internal/kz;

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

    const-string p2, "\u0001\u0008\u0000\u0001\u0001\t\u0008\u0000\u0000\u0004\u0001\u000c\u0000\u0002\u0008\u0001\u0003\u0008\u0002\u0005\u0409\u0004\u0006\u0409\u0005\u0007\u0409\u0006\u0008\t\u0007\t\u0409\u0008"

    .line 14
    sget-object v0, Lcom/google/android/libraries/places/internal/jm;->j:Lcom/google/android/libraries/places/internal/jm;

    invoke-static {v0, p2, p1}, Lcom/google/android/libraries/places/internal/jm;->a(Lcom/google/android/libraries/places/internal/ma;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    if-nez p2, :cond_2

    const/4 v0, 0x0

    :cond_2
    int-to-byte p1, v0

    .line 26
    iput-byte p1, p0, Lcom/google/android/libraries/places/internal/jm;->k:B

    const/4 p1, 0x0

    return-object p1

    .line 25
    :pswitch_6
    iget-byte p1, p0, Lcom/google/android/libraries/places/internal/jm;->k:B

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
