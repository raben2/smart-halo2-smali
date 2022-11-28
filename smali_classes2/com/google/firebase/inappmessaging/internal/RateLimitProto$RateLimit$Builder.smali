.class public final Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "RateLimitProto.java"

# interfaces
.implements Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimitOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;",
        "Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimitOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 291
    invoke-static {}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->access$000()Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$1;)V
    .locals 0

    .line 284
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearLimits()Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit$Builder;
    .locals 1

    .line 316
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit$Builder;->copyOnWrite()V

    .line 317
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->access$100(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public containsLimits(Ljava/lang/String;)Z
    .locals 1

    .line 311
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 312
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->getLimitsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getLimits()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 341
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit$Builder;->getLimitsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLimitsCount()I
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->getLimitsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getLimitsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;",
            ">;"
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    .line 353
    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->getLimitsMap()Ljava/util/Map;

    move-result-object v0

    .line 352
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLimitsOrDefault(Ljava/lang/String;Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;
    .locals 2

    .line 367
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 368
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    .line 369
    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->getLimitsMap()Ljava/util/Map;

    move-result-object v0

    .line 370
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    :cond_0
    return-object p2
.end method

.method public getLimitsOrThrow(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;
    .locals 2

    .line 383
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 384
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    .line 385
    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->getLimitsMap()Ljava/util/Map;

    move-result-object v0

    .line 386
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    return-object p1

    .line 387
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public putAllLimits(Ljava/util/Map;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;",
            ">;)",
            "Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit$Builder;"
        }
    .end annotation

    .line 416
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit$Builder;->copyOnWrite()V

    .line 417
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->access$100(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public putLimits(Ljava/lang/String;Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit$Builder;
    .locals 1

    .line 401
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 402
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 403
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit$Builder;->copyOnWrite()V

    .line 404
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->access$100(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public removeLimits(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit$Builder;
    .locals 1

    .line 330
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 331
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit$Builder;->copyOnWrite()V

    .line 332
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->access$100(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
