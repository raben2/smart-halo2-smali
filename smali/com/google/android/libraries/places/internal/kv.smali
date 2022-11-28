.class public abstract Lcom/google/android/libraries/places/internal/kv;
.super Lcom/google/android/libraries/places/internal/ju;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/internal/kv$c;,
        Lcom/google/android/libraries/places/internal/kv$b;,
        Lcom/google/android/libraries/places/internal/kv$a;,
        Lcom/google/android/libraries/places/internal/kv$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/libraries/places/internal/kv<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/libraries/places/internal/kv$a<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/libraries/places/internal/ju<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/android/libraries/places/internal/kv<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field public r:Lcom/google/android/libraries/places/internal/ng;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 117
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/kv;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/ju;-><init>()V

    .line 3
    sget-object v0, Lcom/google/android/libraries/places/internal/ng;->a:Lcom/google/android/libraries/places/internal/ng;

    .line 4
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/kv;->r:Lcom/google/android/libraries/places/internal/ng;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/google/android/libraries/places/internal/kv;->a:I

    return-void
.end method

.method static a(Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/kv;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/libraries/places/internal/kv<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 48
    sget-object v0, Lcom/google/android/libraries/places/internal/kv;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/kv;

    if-nez v0, :cond_0

    .line 50
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    sget-object v0, Lcom/google/android/libraries/places/internal/kv;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/kv;

    goto :goto_0

    :catch_0
    move-exception p0

    .line 53
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 56
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/nk;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/kv;

    .line 58
    sget-object v1, Lcom/google/android/libraries/places/internal/kv$d;->f:Lcom/google/android/libraries/places/internal/kv$d;

    const/4 v2, 0x0

    .line 59
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/kv;->a(Lcom/google/android/libraries/places/internal/kv$d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 60
    check-cast v0, Lcom/google/android/libraries/places/internal/kv;

    if-eqz v0, :cond_1

    .line 64
    sget-object v1, Lcom/google/android/libraries/places/internal/kv;->b:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 63
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static a(Lcom/google/android/libraries/places/internal/lc;)Lcom/google/android/libraries/places/internal/lc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/libraries/places/internal/lc<",
            "TE;>;)",
            "Lcom/google/android/libraries/places/internal/lc<",
            "TE;>;"
        }
    .end annotation

    .line 96
    invoke-interface {p0}, Lcom/google/android/libraries/places/internal/lc;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 99
    :goto_0
    invoke-interface {p0, v0}, Lcom/google/android/libraries/places/internal/lc;->b(I)Lcom/google/android/libraries/places/internal/lc;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/google/android/libraries/places/internal/ma;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 68
    new-instance v0, Lcom/google/android/libraries/places/internal/mo;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/libraries/places/internal/mo;-><init>(Lcom/google/android/libraries/places/internal/ma;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method static varargs a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 69
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 73
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 74
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    .line 76
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    .line 77
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 78
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 75
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    .line 71
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static a(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/kv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/libraries/places/internal/kv<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 66
    sget-object v0, Lcom/google/android/libraries/places/internal/kv;->b:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected static final a(Lcom/google/android/libraries/places/internal/kv;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/libraries/places/internal/kv<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    .line 79
    sget-object v0, Lcom/google/android/libraries/places/internal/kv$d;->a:Lcom/google/android/libraries/places/internal/kv$d;

    const/4 v1, 0x0

    .line 81
    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/places/internal/kv;->a(Lcom/google/android/libraries/places/internal/kv$d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 82
    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 87
    :cond_1
    sget-object v0, Lcom/google/android/libraries/places/internal/mm;->a:Lcom/google/android/libraries/places/internal/mm;

    .line 88
    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/mm;->a(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/mp;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/libraries/places/internal/mp;->d(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p1, :cond_3

    .line 90
    sget-object p1, Lcom/google/android/libraries/places/internal/kv$d;->b:Lcom/google/android/libraries/places/internal/kv$d;

    if-eqz v0, :cond_2

    move-object v1, p0

    .line 93
    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/google/android/libraries/places/internal/kv;->a(Lcom/google/android/libraries/places/internal/kv$d;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return v0
.end method


# virtual methods
.method public abstract a(Lcom/google/android/libraries/places/internal/kv$d;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method final a(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/google/android/libraries/places/internal/kv;->a:I

    return-void
.end method

.method public final a(Lcom/google/android/libraries/places/internal/kk;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    sget-object v0, Lcom/google/android/libraries/places/internal/mm;->a:Lcom/google/android/libraries/places/internal/mm;

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/mm;->a(Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/mp;

    move-result-object v0

    .line 40
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/nt;->a(Lcom/google/android/libraries/places/internal/kk;)Lcom/google/android/libraries/places/internal/nt;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/android/libraries/places/internal/mp;->a(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/nt;)V

    return-void
.end method

.method final d()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/google/android/libraries/places/internal/kv;->a:I

    return v0
.end method

.method public e()V
    .locals 1

    .line 24
    sget-object v0, Lcom/google/android/libraries/places/internal/mm;->a:Lcom/google/android/libraries/places/internal/mm;

    .line 25
    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/mm;->a(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/mp;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/libraries/places/internal/mp;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 17
    :cond_0
    sget-object v0, Lcom/google/android/libraries/places/internal/kv$d;->f:Lcom/google/android/libraries/places/internal/kv$d;

    const/4 v1, 0x0

    .line 18
    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/places/internal/kv;->a(Lcom/google/android/libraries/places/internal/kv$d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 19
    check-cast v0, Lcom/google/android/libraries/places/internal/kv;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 22
    :cond_1
    sget-object v0, Lcom/google/android/libraries/places/internal/mm;->a:Lcom/google/android/libraries/places/internal/mm;

    .line 23
    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/mm;->a(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/mp;

    move-result-object v0

    check-cast p1, Lcom/google/android/libraries/places/internal/kv;

    invoke-interface {v0, p0, p1}, Lcom/google/android/libraries/places/internal/mp;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f()Lcom/google/android/libraries/places/internal/kv$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/android/libraries/places/internal/kv<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/google/android/libraries/places/internal/kv$a<",
            "TMessageType;TBuilderType;>;>()TBuilderType;"
        }
    .end annotation

    .line 27
    sget-object v0, Lcom/google/android/libraries/places/internal/kv$d;->e:Lcom/google/android/libraries/places/internal/kv$d;

    const/4 v1, 0x0

    .line 28
    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/places/internal/kv;->a(Lcom/google/android/libraries/places/internal/kv$d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 29
    check-cast v0, Lcom/google/android/libraries/places/internal/kv$a;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .line 30
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/libraries/places/internal/kv;->a(Lcom/google/android/libraries/places/internal/kv;Z)Z

    move-result v0

    return v0
.end method

.method public final h()I
    .locals 2

    .line 42
    iget v0, p0, Lcom/google/android/libraries/places/internal/kv;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 44
    sget-object v0, Lcom/google/android/libraries/places/internal/mm;->a:Lcom/google/android/libraries/places/internal/mm;

    .line 45
    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/mm;->a(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/mp;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/libraries/places/internal/mp;->b(Ljava/lang/Object;)I

    move-result v0

    .line 46
    iput v0, p0, Lcom/google/android/libraries/places/internal/kv;->a:I

    .line 47
    :cond_0
    iget v0, p0, Lcom/google/android/libraries/places/internal/kv;->a:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/google/android/libraries/places/internal/kv;->q:I

    if-eqz v0, :cond_0

    .line 8
    iget v0, p0, Lcom/google/android/libraries/places/internal/kv;->q:I

    return v0

    .line 10
    :cond_0
    sget-object v0, Lcom/google/android/libraries/places/internal/mm;->a:Lcom/google/android/libraries/places/internal/mm;

    .line 11
    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/mm;->a(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/mp;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/libraries/places/internal/mp;->a(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/places/internal/kv;->q:I

    .line 12
    iget v0, p0, Lcom/google/android/libraries/places/internal/kv;->q:I

    return v0
.end method

.method public final synthetic i()Lcom/google/android/libraries/places/internal/mb;
    .locals 2

    .line 101
    sget-object v0, Lcom/google/android/libraries/places/internal/kv$d;->e:Lcom/google/android/libraries/places/internal/kv$d;

    const/4 v1, 0x0

    .line 102
    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/places/internal/kv;->a(Lcom/google/android/libraries/places/internal/kv$d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 103
    check-cast v0, Lcom/google/android/libraries/places/internal/kv$a;

    .line 104
    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/kv$a;->a(Lcom/google/android/libraries/places/internal/kv;)Lcom/google/android/libraries/places/internal/kv$a;

    return-object v0
.end method

.method public final synthetic j()Lcom/google/android/libraries/places/internal/mb;
    .locals 2

    .line 108
    sget-object v0, Lcom/google/android/libraries/places/internal/kv$d;->e:Lcom/google/android/libraries/places/internal/kv$d;

    const/4 v1, 0x0

    .line 109
    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/places/internal/kv;->a(Lcom/google/android/libraries/places/internal/kv$d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 110
    check-cast v0, Lcom/google/android/libraries/places/internal/kv$a;

    return-object v0
.end method

.method public final synthetic k()Lcom/google/android/libraries/places/internal/ma;
    .locals 2

    .line 113
    sget-object v0, Lcom/google/android/libraries/places/internal/kv$d;->f:Lcom/google/android/libraries/places/internal/kv$d;

    const/4 v1, 0x0

    .line 114
    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/places/internal/kv;->a(Lcom/google/android/libraries/places/internal/kv$d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 115
    check-cast v0, Lcom/google/android/libraries/places/internal/kv;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/libraries/places/internal/lt;->a(Lcom/google/android/libraries/places/internal/ma;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
