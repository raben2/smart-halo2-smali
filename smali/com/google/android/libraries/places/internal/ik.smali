.class public final Lcom/google/android/libraries/places/internal/ik;
.super Lcom/google/android/libraries/places/internal/kv;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/internal/mc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/internal/ik$a;,
        Lcom/google/android/libraries/places/internal/ik$c;,
        Lcom/google/android/libraries/places/internal/ik$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/kv<",
        "Lcom/google/android/libraries/places/internal/ik;",
        "Lcom/google/android/libraries/places/internal/ik$a;",
        ">;",
        "Lcom/google/android/libraries/places/internal/mc;"
    }
.end annotation


# static fields
.field public static final h:Lcom/google/android/libraries/places/internal/ik;

.field private static volatile i:Lcom/google/android/libraries/places/internal/mj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/mj<",
            "Lcom/google/android/libraries/places/internal/ik;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Lcom/google/android/libraries/places/internal/ij;

.field public f:Lcom/google/android/libraries/places/internal/ih;

.field public g:Lcom/google/android/libraries/places/internal/ii;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/google/android/libraries/places/internal/ik;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/ik;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/ik;->h:Lcom/google/android/libraries/places/internal/ik;

    .line 30
    const-class v0, Lcom/google/android/libraries/places/internal/ik;

    sget-object v1, Lcom/google/android/libraries/places/internal/ik;->h:Lcom/google/android/libraries/places/internal/ik;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/kv;->a(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/kv;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/kv;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/libraries/places/internal/ik$a;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/libraries/places/internal/ik;->h:Lcom/google/android/libraries/places/internal/ik;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kv;->f()Lcom/google/android/libraries/places/internal/kv$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/ik$a;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/google/android/libraries/places/internal/kv$d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 4
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/kv$d;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 28
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 17
    :pswitch_0
    sget-object p1, Lcom/google/android/libraries/places/internal/ik;->i:Lcom/google/android/libraries/places/internal/mj;

    if-nez p1, :cond_1

    .line 19
    const-class p2, Lcom/google/android/libraries/places/internal/ik;

    monitor-enter p2

    .line 20
    :try_start_0
    sget-object p1, Lcom/google/android/libraries/places/internal/ik;->i:Lcom/google/android/libraries/places/internal/mj;

    if-nez p1, :cond_0

    .line 22
    new-instance p1, Lcom/google/android/libraries/places/internal/jx;

    sget-object v0, Lcom/google/android/libraries/places/internal/ik;->h:Lcom/google/android/libraries/places/internal/ik;

    invoke-direct {p1, v0}, Lcom/google/android/libraries/places/internal/jx;-><init>(Lcom/google/android/libraries/places/internal/kv;)V

    .line 23
    sput-object p1, Lcom/google/android/libraries/places/internal/ik;->i:Lcom/google/android/libraries/places/internal/mj;

    .line 24
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

    .line 16
    :pswitch_1
    sget-object p1, Lcom/google/android/libraries/places/internal/ik;->h:Lcom/google/android/libraries/places/internal/ik;

    return-object p1

    .line 6
    :pswitch_2
    new-instance p1, Lcom/google/android/libraries/places/internal/ik$a;

    .line 7
    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ik$a;-><init>()V

    return-object p1

    .line 5
    :pswitch_3
    new-instance p1, Lcom/google/android/libraries/places/internal/ik;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/ik;-><init>()V

    return-object p1

    :pswitch_4
    const/16 p1, 0x9

    .line 9
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "a"

    aput-object v1, p1, v0

    const-string v0, "b"

    aput-object v0, p1, p2

    const/4 p2, 0x2

    .line 10
    invoke-static {}, Lcom/google/android/libraries/places/internal/ik$b;->b()Lcom/google/android/libraries/places/internal/kz;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x3

    const-string v0, "c"

    aput-object v0, p1, p2

    const/4 p2, 0x4

    .line 11
    invoke-static {}, Lcom/google/android/libraries/places/internal/ik$c;->b()Lcom/google/android/libraries/places/internal/kz;

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

    const-string p2, "\u0001\u0006\u0000\u0001\u0001\n\u0006\u0000\u0000\u0000\u0001\u000c\u0000\u0002\u000c\u0001\u0003\u0004\u0002\u0006\t\u0005\u0008\t\u0007\n\t\t"

    .line 15
    sget-object v0, Lcom/google/android/libraries/places/internal/ik;->h:Lcom/google/android/libraries/places/internal/ik;

    invoke-static {v0, p2, p1}, Lcom/google/android/libraries/places/internal/ik;->a(Lcom/google/android/libraries/places/internal/ma;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    const/4 p1, 0x0

    return-object p1

    .line 26
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
