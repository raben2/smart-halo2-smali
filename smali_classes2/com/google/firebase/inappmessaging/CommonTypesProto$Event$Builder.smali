.class public final Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "CommonTypesProto.java"

# interfaces
.implements Lcom/google/firebase/inappmessaging/CommonTypesProto$EventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$EventOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2138
    invoke-static {}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$2000()Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/inappmessaging/CommonTypesProto$1;)V
    .locals 0

    .line 2131
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllTriggerParams(Ljava/lang/Iterable;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;",
            ">;)",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;"
        }
    .end annotation

    .line 2263
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->copyOnWrite()V

    .line 2264
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$2400(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addTriggerParams(ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1

    .line 2249
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->copyOnWrite()V

    .line 2250
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    .line 2251
    invoke-virtual {p2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    .line 2250
    invoke-static {v0, p1, p2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$2300(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V

    return-object p0
.end method

.method public addTriggerParams(ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1

    .line 2223
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->copyOnWrite()V

    .line 2224
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$2300(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V

    return-object p0
.end method

.method public addTriggerParams(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1

    .line 2236
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->copyOnWrite()V

    .line 2237
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$2200(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V

    return-object p0
.end method

.method public addTriggerParams(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1

    .line 2210
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->copyOnWrite()V

    .line 2211
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$2200(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V

    return-object p0
.end method

.method public clearCount()Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1

    .line 2490
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->copyOnWrite()V

    .line 2491
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$3500(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;)V

    return-object p0
.end method

.method public clearName()Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1

    .line 2345
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->copyOnWrite()V

    .line 2346
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$2800(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;)V

    return-object p0
.end method

.method public clearPreviousTimestampMillis()Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1

    .line 2441
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->copyOnWrite()V

    .line 2442
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$3300(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;)V

    return-object p0
.end method

.method public clearTimestampMillis()Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1

    .line 2401
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->copyOnWrite()V

    .line 2402
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$3100(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;)V

    return-object p0
.end method

.method public clearTriggerParams()Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1

    .line 2275
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->copyOnWrite()V

    .line 2276
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$2500(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;)V

    return-object p0
.end method

.method public getCount()I
    .locals 1

    .line 2459
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->getCount()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 2303
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2317
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousTimestampMillis()J
    .locals 2

    .line 2416
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->getPreviousTimestampMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimestampMillis()J
    .locals 2

    .line 2376
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->getTimestampMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTriggerParams(I)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;
    .locals 1

    .line 2173
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->getTriggerParams(I)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    move-result-object p1

    return-object p1
.end method

.method public getTriggerParamsCount()I
    .locals 1

    .line 2163
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->getTriggerParamsCount()I

    move-result v0

    return v0
.end method

.method public getTriggerParamsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;",
            ">;"
        }
    .end annotation

    .line 2151
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    .line 2152
    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->getTriggerParamsList()Ljava/util/List;

    move-result-object v0

    .line 2151
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeTriggerParams(I)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1

    .line 2287
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->copyOnWrite()V

    .line 2288
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$2600(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;I)V

    return-object p0
.end method

.method public setCount(I)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1

    .line 2474
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->copyOnWrite()V

    .line 2475
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$3400(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;I)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1

    .line 2331
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->copyOnWrite()V

    .line 2332
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$2700(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1

    .line 2361
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->copyOnWrite()V

    .line 2362
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$2900(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPreviousTimestampMillis(J)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1

    .line 2428
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->copyOnWrite()V

    .line 2429
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$3200(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;J)V

    return-object p0
.end method

.method public setTimestampMillis(J)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1

    .line 2388
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->copyOnWrite()V

    .line 2389
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$3000(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;J)V

    return-object p0
.end method

.method public setTriggerParams(ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1

    .line 2197
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->copyOnWrite()V

    .line 2198
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    .line 2199
    invoke-virtual {p2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    .line 2198
    invoke-static {v0, p1, p2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$2100(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V

    return-object p0
.end method

.method public setTriggerParams(ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1

    .line 2184
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->copyOnWrite()V

    .line 2185
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$2100(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V

    return-object p0
.end method
