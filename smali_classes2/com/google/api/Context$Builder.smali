.class public final Lcom/google/api/Context$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Context.java"

# interfaces
.implements Lcom/google/api/ContextOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Context;",
        "Lcom/google/api/Context$Builder;",
        ">;",
        "Lcom/google/api/ContextOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 318
    invoke-static {}, Lcom/google/api/Context;->access$000()Lcom/google/api/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/Context$1;)V
    .locals 0

    .line 311
    invoke-direct {p0}, Lcom/google/api/Context$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllRules(Ljava/lang/Iterable;)Lcom/google/api/Context$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/ContextRule;",
            ">;)",
            "Lcom/google/api/Context$Builder;"
        }
    .end annotation

    .line 453
    invoke-virtual {p0}, Lcom/google/api/Context$Builder;->copyOnWrite()V

    .line 454
    iget-object v0, p0, Lcom/google/api/Context$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Context;

    invoke-static {v0, p1}, Lcom/google/api/Context;->access$400(Lcom/google/api/Context;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addRules(ILcom/google/api/ContextRule$Builder;)Lcom/google/api/Context$Builder;
    .locals 1

    .line 438
    invoke-virtual {p0}, Lcom/google/api/Context$Builder;->copyOnWrite()V

    .line 439
    iget-object v0, p0, Lcom/google/api/Context$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Context;

    .line 440
    invoke-virtual {p2}, Lcom/google/api/ContextRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/ContextRule;

    .line 439
    invoke-static {v0, p1, p2}, Lcom/google/api/Context;->access$300(Lcom/google/api/Context;ILcom/google/api/ContextRule;)V

    return-object p0
.end method

.method public addRules(ILcom/google/api/ContextRule;)Lcom/google/api/Context$Builder;
    .locals 1

    .line 410
    invoke-virtual {p0}, Lcom/google/api/Context$Builder;->copyOnWrite()V

    .line 411
    iget-object v0, p0, Lcom/google/api/Context$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Context;

    invoke-static {v0, p1, p2}, Lcom/google/api/Context;->access$300(Lcom/google/api/Context;ILcom/google/api/ContextRule;)V

    return-object p0
.end method

.method public addRules(Lcom/google/api/ContextRule$Builder;)Lcom/google/api/Context$Builder;
    .locals 1

    .line 424
    invoke-virtual {p0}, Lcom/google/api/Context$Builder;->copyOnWrite()V

    .line 425
    iget-object v0, p0, Lcom/google/api/Context$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Context;

    invoke-virtual {p1}, Lcom/google/api/ContextRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/ContextRule;

    invoke-static {v0, p1}, Lcom/google/api/Context;->access$200(Lcom/google/api/Context;Lcom/google/api/ContextRule;)V

    return-object p0
.end method

.method public addRules(Lcom/google/api/ContextRule;)Lcom/google/api/Context$Builder;
    .locals 1

    .line 396
    invoke-virtual {p0}, Lcom/google/api/Context$Builder;->copyOnWrite()V

    .line 397
    iget-object v0, p0, Lcom/google/api/Context$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Context;

    invoke-static {v0, p1}, Lcom/google/api/Context;->access$200(Lcom/google/api/Context;Lcom/google/api/ContextRule;)V

    return-object p0
.end method

.method public clearRules()Lcom/google/api/Context$Builder;
    .locals 1

    .line 466
    invoke-virtual {p0}, Lcom/google/api/Context$Builder;->copyOnWrite()V

    .line 467
    iget-object v0, p0, Lcom/google/api/Context$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Context;

    invoke-static {v0}, Lcom/google/api/Context;->access$500(Lcom/google/api/Context;)V

    return-object p0
.end method

.method public getRules(I)Lcom/google/api/ContextRule;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/google/api/Context$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Context;

    invoke-virtual {v0, p1}, Lcom/google/api/Context;->getRules(I)Lcom/google/api/ContextRule;

    move-result-object p1

    return-object p1
.end method

.method public getRulesCount()I
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/google/api/Context$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Context;

    invoke-virtual {v0}, Lcom/google/api/Context;->getRulesCount()I

    move-result v0

    return v0
.end method

.method public getRulesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/ContextRule;",
            ">;"
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/google/api/Context$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Context;

    .line 333
    invoke-virtual {v0}, Lcom/google/api/Context;->getRulesList()Ljava/util/List;

    move-result-object v0

    .line 332
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeRules(I)Lcom/google/api/Context$Builder;
    .locals 1

    .line 479
    invoke-virtual {p0}, Lcom/google/api/Context$Builder;->copyOnWrite()V

    .line 480
    iget-object v0, p0, Lcom/google/api/Context$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Context;

    invoke-static {v0, p1}, Lcom/google/api/Context;->access$600(Lcom/google/api/Context;I)V

    return-object p0
.end method

.method public setRules(ILcom/google/api/ContextRule$Builder;)Lcom/google/api/Context$Builder;
    .locals 1

    .line 382
    invoke-virtual {p0}, Lcom/google/api/Context$Builder;->copyOnWrite()V

    .line 383
    iget-object v0, p0, Lcom/google/api/Context$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Context;

    .line 384
    invoke-virtual {p2}, Lcom/google/api/ContextRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/ContextRule;

    .line 383
    invoke-static {v0, p1, p2}, Lcom/google/api/Context;->access$100(Lcom/google/api/Context;ILcom/google/api/ContextRule;)V

    return-object p0
.end method

.method public setRules(ILcom/google/api/ContextRule;)Lcom/google/api/Context$Builder;
    .locals 1

    .line 368
    invoke-virtual {p0}, Lcom/google/api/Context$Builder;->copyOnWrite()V

    .line 369
    iget-object v0, p0, Lcom/google/api/Context$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Context;

    invoke-static {v0, p1, p2}, Lcom/google/api/Context;->access$100(Lcom/google/api/Context;ILcom/google/api/ContextRule;)V

    return-object p0
.end method
