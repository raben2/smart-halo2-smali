.class public final Lcom/google/api/Http$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Http.java"

# interfaces
.implements Lcom/google/api/HttpOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Http;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Http;",
        "Lcom/google/api/Http$Builder;",
        ">;",
        "Lcom/google/api/HttpOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 318
    invoke-static {}, Lcom/google/api/Http;->access$000()Lcom/google/api/Http;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/Http$1;)V
    .locals 0

    .line 311
    invoke-direct {p0}, Lcom/google/api/Http$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllRules(Ljava/lang/Iterable;)Lcom/google/api/Http$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/HttpRule;",
            ">;)",
            "Lcom/google/api/Http$Builder;"
        }
    .end annotation

    .line 453
    invoke-virtual {p0}, Lcom/google/api/Http$Builder;->copyOnWrite()V

    .line 454
    iget-object v0, p0, Lcom/google/api/Http$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Http;

    invoke-static {v0, p1}, Lcom/google/api/Http;->access$400(Lcom/google/api/Http;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addRules(ILcom/google/api/HttpRule$Builder;)Lcom/google/api/Http$Builder;
    .locals 1

    .line 438
    invoke-virtual {p0}, Lcom/google/api/Http$Builder;->copyOnWrite()V

    .line 439
    iget-object v0, p0, Lcom/google/api/Http$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Http;

    .line 440
    invoke-virtual {p2}, Lcom/google/api/HttpRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/HttpRule;

    .line 439
    invoke-static {v0, p1, p2}, Lcom/google/api/Http;->access$300(Lcom/google/api/Http;ILcom/google/api/HttpRule;)V

    return-object p0
.end method

.method public addRules(ILcom/google/api/HttpRule;)Lcom/google/api/Http$Builder;
    .locals 1

    .line 410
    invoke-virtual {p0}, Lcom/google/api/Http$Builder;->copyOnWrite()V

    .line 411
    iget-object v0, p0, Lcom/google/api/Http$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Http;

    invoke-static {v0, p1, p2}, Lcom/google/api/Http;->access$300(Lcom/google/api/Http;ILcom/google/api/HttpRule;)V

    return-object p0
.end method

.method public addRules(Lcom/google/api/HttpRule$Builder;)Lcom/google/api/Http$Builder;
    .locals 1

    .line 424
    invoke-virtual {p0}, Lcom/google/api/Http$Builder;->copyOnWrite()V

    .line 425
    iget-object v0, p0, Lcom/google/api/Http$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Http;

    invoke-virtual {p1}, Lcom/google/api/HttpRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/HttpRule;

    invoke-static {v0, p1}, Lcom/google/api/Http;->access$200(Lcom/google/api/Http;Lcom/google/api/HttpRule;)V

    return-object p0
.end method

.method public addRules(Lcom/google/api/HttpRule;)Lcom/google/api/Http$Builder;
    .locals 1

    .line 396
    invoke-virtual {p0}, Lcom/google/api/Http$Builder;->copyOnWrite()V

    .line 397
    iget-object v0, p0, Lcom/google/api/Http$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Http;

    invoke-static {v0, p1}, Lcom/google/api/Http;->access$200(Lcom/google/api/Http;Lcom/google/api/HttpRule;)V

    return-object p0
.end method

.method public clearFullyDecodeReservedExpansion()Lcom/google/api/Http$Builder;
    .locals 1

    .line 531
    invoke-virtual {p0}, Lcom/google/api/Http$Builder;->copyOnWrite()V

    .line 532
    iget-object v0, p0, Lcom/google/api/Http$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Http;

    invoke-static {v0}, Lcom/google/api/Http;->access$800(Lcom/google/api/Http;)V

    return-object p0
.end method

.method public clearRules()Lcom/google/api/Http$Builder;
    .locals 1

    .line 466
    invoke-virtual {p0}, Lcom/google/api/Http$Builder;->copyOnWrite()V

    .line 467
    iget-object v0, p0, Lcom/google/api/Http$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Http;

    invoke-static {v0}, Lcom/google/api/Http;->access$500(Lcom/google/api/Http;)V

    return-object p0
.end method

.method public getFullyDecodeReservedExpansion()Z
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/google/api/Http$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Http;

    invoke-virtual {v0}, Lcom/google/api/Http;->getFullyDecodeReservedExpansion()Z

    move-result v0

    return v0
.end method

.method public getRules(I)Lcom/google/api/HttpRule;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/google/api/Http$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Http;

    invoke-virtual {v0, p1}, Lcom/google/api/Http;->getRules(I)Lcom/google/api/HttpRule;

    move-result-object p1

    return-object p1
.end method

.method public getRulesCount()I
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/google/api/Http$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Http;

    invoke-virtual {v0}, Lcom/google/api/Http;->getRulesCount()I

    move-result v0

    return v0
.end method

.method public getRulesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/HttpRule;",
            ">;"
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/google/api/Http$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Http;

    .line 333
    invoke-virtual {v0}, Lcom/google/api/Http;->getRulesList()Ljava/util/List;

    move-result-object v0

    .line 332
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeRules(I)Lcom/google/api/Http$Builder;
    .locals 1

    .line 479
    invoke-virtual {p0}, Lcom/google/api/Http$Builder;->copyOnWrite()V

    .line 480
    iget-object v0, p0, Lcom/google/api/Http$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Http;

    invoke-static {v0, p1}, Lcom/google/api/Http;->access$600(Lcom/google/api/Http;I)V

    return-object p0
.end method

.method public setFullyDecodeReservedExpansion(Z)Lcom/google/api/Http$Builder;
    .locals 1

    .line 514
    invoke-virtual {p0}, Lcom/google/api/Http$Builder;->copyOnWrite()V

    .line 515
    iget-object v0, p0, Lcom/google/api/Http$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Http;

    invoke-static {v0, p1}, Lcom/google/api/Http;->access$700(Lcom/google/api/Http;Z)V

    return-object p0
.end method

.method public setRules(ILcom/google/api/HttpRule$Builder;)Lcom/google/api/Http$Builder;
    .locals 1

    .line 382
    invoke-virtual {p0}, Lcom/google/api/Http$Builder;->copyOnWrite()V

    .line 383
    iget-object v0, p0, Lcom/google/api/Http$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Http;

    .line 384
    invoke-virtual {p2}, Lcom/google/api/HttpRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/HttpRule;

    .line 383
    invoke-static {v0, p1, p2}, Lcom/google/api/Http;->access$100(Lcom/google/api/Http;ILcom/google/api/HttpRule;)V

    return-object p0
.end method

.method public setRules(ILcom/google/api/HttpRule;)Lcom/google/api/Http$Builder;
    .locals 1

    .line 368
    invoke-virtual {p0}, Lcom/google/api/Http$Builder;->copyOnWrite()V

    .line 369
    iget-object v0, p0, Lcom/google/api/Http$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Http;

    invoke-static {v0, p1, p2}, Lcom/google/api/Http;->access$100(Lcom/google/api/Http;ILcom/google/api/HttpRule;)V

    return-object p0
.end method
