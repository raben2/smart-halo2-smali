.class final synthetic Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient$$Lambda$5;
.super Ljava/lang/Object;
.source "ImpressionStorageClient.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field private static final instance:Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient$$Lambda$5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient$$Lambda$5;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient$$Lambda$5;-><init>()V

    sput-object v0, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient$$Lambda$5;->instance:Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient$$Lambda$5;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lio/reactivex/functions/Function;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient$$Lambda$5;->instance:Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient$$Lambda$5;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lio/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
