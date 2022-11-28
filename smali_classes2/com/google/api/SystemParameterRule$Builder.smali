.class public final Lcom/google/api/SystemParameterRule$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SystemParameterRule.java"

# interfaces
.implements Lcom/google/api/SystemParameterRuleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/SystemParameterRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/SystemParameterRule;",
        "Lcom/google/api/SystemParameterRule$Builder;",
        ">;",
        "Lcom/google/api/SystemParameterRuleOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 377
    invoke-static {}, Lcom/google/api/SystemParameterRule;->access$000()Lcom/google/api/SystemParameterRule;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/SystemParameterRule$1;)V
    .locals 0

    .line 370
    invoke-direct {p0}, Lcom/google/api/SystemParameterRule$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllParameters(Ljava/lang/Iterable;)Lcom/google/api/SystemParameterRule$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/SystemParameter;",
            ">;)",
            "Lcom/google/api/SystemParameterRule$Builder;"
        }
    .end annotation

    .line 621
    invoke-virtual {p0}, Lcom/google/api/SystemParameterRule$Builder;->copyOnWrite()V

    .line 622
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    invoke-static {v0, p1}, Lcom/google/api/SystemParameterRule;->access$700(Lcom/google/api/SystemParameterRule;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addParameters(ILcom/google/api/SystemParameter$Builder;)Lcom/google/api/SystemParameterRule$Builder;
    .locals 1

    .line 603
    invoke-virtual {p0}, Lcom/google/api/SystemParameterRule$Builder;->copyOnWrite()V

    .line 604
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    .line 605
    invoke-virtual {p2}, Lcom/google/api/SystemParameter$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/SystemParameter;

    .line 604
    invoke-static {v0, p1, p2}, Lcom/google/api/SystemParameterRule;->access$600(Lcom/google/api/SystemParameterRule;ILcom/google/api/SystemParameter;)V

    return-object p0
.end method

.method public addParameters(ILcom/google/api/SystemParameter;)Lcom/google/api/SystemParameterRule$Builder;
    .locals 1

    .line 569
    invoke-virtual {p0}, Lcom/google/api/SystemParameterRule$Builder;->copyOnWrite()V

    .line 570
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    invoke-static {v0, p1, p2}, Lcom/google/api/SystemParameterRule;->access$600(Lcom/google/api/SystemParameterRule;ILcom/google/api/SystemParameter;)V

    return-object p0
.end method

.method public addParameters(Lcom/google/api/SystemParameter$Builder;)Lcom/google/api/SystemParameterRule$Builder;
    .locals 1

    .line 586
    invoke-virtual {p0}, Lcom/google/api/SystemParameterRule$Builder;->copyOnWrite()V

    .line 587
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    invoke-virtual {p1}, Lcom/google/api/SystemParameter$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/SystemParameter;

    invoke-static {v0, p1}, Lcom/google/api/SystemParameterRule;->access$500(Lcom/google/api/SystemParameterRule;Lcom/google/api/SystemParameter;)V

    return-object p0
.end method

.method public addParameters(Lcom/google/api/SystemParameter;)Lcom/google/api/SystemParameterRule$Builder;
    .locals 1

    .line 552
    invoke-virtual {p0}, Lcom/google/api/SystemParameterRule$Builder;->copyOnWrite()V

    .line 553
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    invoke-static {v0, p1}, Lcom/google/api/SystemParameterRule;->access$500(Lcom/google/api/SystemParameterRule;Lcom/google/api/SystemParameter;)V

    return-object p0
.end method

.method public clearParameters()Lcom/google/api/SystemParameterRule$Builder;
    .locals 1

    .line 637
    invoke-virtual {p0}, Lcom/google/api/SystemParameterRule$Builder;->copyOnWrite()V

    .line 638
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    invoke-static {v0}, Lcom/google/api/SystemParameterRule;->access$800(Lcom/google/api/SystemParameterRule;)V

    return-object p0
.end method

.method public clearSelector()Lcom/google/api/SystemParameterRule$Builder;
    .locals 1

    .line 438
    invoke-virtual {p0}, Lcom/google/api/SystemParameterRule$Builder;->copyOnWrite()V

    .line 439
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    invoke-static {v0}, Lcom/google/api/SystemParameterRule;->access$200(Lcom/google/api/SystemParameterRule;)V

    return-object p0
.end method

.method public getParameters(I)Lcom/google/api/SystemParameter;
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    invoke-virtual {v0, p1}, Lcom/google/api/SystemParameterRule;->getParameters(I)Lcom/google/api/SystemParameter;

    move-result-object p1

    return-object p1
.end method

.method public getParametersCount()I
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    invoke-virtual {v0}, Lcom/google/api/SystemParameterRule;->getParametersCount()I

    move-result v0

    return v0
.end method

.method public getParametersList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/SystemParameter;",
            ">;"
        }
    .end annotation

    .line 473
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    .line 474
    invoke-virtual {v0}, Lcom/google/api/SystemParameterRule;->getParametersList()Ljava/util/List;

    move-result-object v0

    .line 473
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSelector()Ljava/lang/String;
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    invoke-virtual {v0}, Lcom/google/api/SystemParameterRule;->getSelector()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    invoke-virtual {v0}, Lcom/google/api/SystemParameterRule;->getSelectorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public removeParameters(I)Lcom/google/api/SystemParameterRule$Builder;
    .locals 1

    .line 653
    invoke-virtual {p0}, Lcom/google/api/SystemParameterRule$Builder;->copyOnWrite()V

    .line 654
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    invoke-static {v0, p1}, Lcom/google/api/SystemParameterRule;->access$900(Lcom/google/api/SystemParameterRule;I)V

    return-object p0
.end method

.method public setParameters(ILcom/google/api/SystemParameter$Builder;)Lcom/google/api/SystemParameterRule$Builder;
    .locals 1

    .line 535
    invoke-virtual {p0}, Lcom/google/api/SystemParameterRule$Builder;->copyOnWrite()V

    .line 536
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    .line 537
    invoke-virtual {p2}, Lcom/google/api/SystemParameter$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/SystemParameter;

    .line 536
    invoke-static {v0, p1, p2}, Lcom/google/api/SystemParameterRule;->access$400(Lcom/google/api/SystemParameterRule;ILcom/google/api/SystemParameter;)V

    return-object p0
.end method

.method public setParameters(ILcom/google/api/SystemParameter;)Lcom/google/api/SystemParameterRule$Builder;
    .locals 1

    .line 518
    invoke-virtual {p0}, Lcom/google/api/SystemParameterRule$Builder;->copyOnWrite()V

    .line 519
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    invoke-static {v0, p1, p2}, Lcom/google/api/SystemParameterRule;->access$400(Lcom/google/api/SystemParameterRule;ILcom/google/api/SystemParameter;)V

    return-object p0
.end method

.method public setSelector(Ljava/lang/String;)Lcom/google/api/SystemParameterRule$Builder;
    .locals 1

    .line 423
    invoke-virtual {p0}, Lcom/google/api/SystemParameterRule$Builder;->copyOnWrite()V

    .line 424
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    invoke-static {v0, p1}, Lcom/google/api/SystemParameterRule;->access$100(Lcom/google/api/SystemParameterRule;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSelectorBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/SystemParameterRule$Builder;
    .locals 1

    .line 455
    invoke-virtual {p0}, Lcom/google/api/SystemParameterRule$Builder;->copyOnWrite()V

    .line 456
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    invoke-static {v0, p1}, Lcom/google/api/SystemParameterRule;->access$300(Lcom/google/api/SystemParameterRule;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
